import { Component, OnInit } from '@angular/core';
import { ActionSheetController, ToastController  } from '@ionic/angular';
import { ApiResponseService } from '../service/api-response.service';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.page.html',
  styleUrls: ['./perfil.page.scss'],
})
export class PerfilPage implements OnInit {

  constructor(
    private actionSheetController:ActionSheetController,
    private service: ApiResponseService,
    public toastController: ToastController
  ) { }

  public img="";
  public newImg="";
  public nombre="";
  public email ="";
  uploadFiles:Array<File>;
  
  ngOnInit() {
    this.datos();
    console.log('Perfil');
    
  }

  datos(){
    this.img = window.localStorage.getItem('img');
    this.nombre = window.localStorage.getItem('nombre');
    this.email = window.localStorage.getItem('mail');
  }

  async presentActionSheet() {
    const actionSheet = await this.actionSheetController.create({
      header: 'Opciones',
      cssClass: 'my-custom-class',
      buttons: [{
        text: 'Cambiar foto de perfil',
        icon: 'camera',
        handler: () => {
          const page = document.getElementById("pwaPhoto");
          page.click();
        }
      }/*, {
        text: 'Buscar platillos',
        icon: 'search',
        handler: () => {
          console.log('Share clicked');
        }
      }, {
        text: 'Agregar comentario',
        icon: 'add',
        handler: () => {
          console.log('Play clicked');
        }
      }, {
        text: 'Agregar menu a favoritos',
        icon: 'heart',
        handler: () => {
          console.log('Favorite clicked');
        }
      }, {
        text: 'Cerrar',
        icon: 'close',
        role: 'cancel',
        handler: () => {
          console.log('Cancel clicked');
        }
      }*/]
    });
    await actionSheet.present();

    const { role } = await actionSheet.onDidDismiss();
    console.log('onDidDismiss resolved with role', role);
  }

  cambiarFoto(e){
    this.uploadFiles = e.target.files;
    console.log(this.uploadFiles);
    let formData = new FormData();

    for(let i = 0; i<this.uploadFiles.length; i++){
    console.log( this.uploadFiles[i].text);
    formData.append("uploads", this.uploadFiles[i],this.uploadFiles[i].name);
    }
    let referencia =this.service.referenciaCloudStorage(this.uploadFiles[0].name)
    this.service.tareaCloudStorage(this.uploadFiles[0].name,formData.get('uploads')).then(res =>{
      if(res.state){
        referencia.getDownloadURL().subscribe((URL) => {
          this.service.cambiarUrlImgUsuario(URL);
          window.localStorage.setItem('img',URL);
          this.img=URL;
          this.presentToast("Imagen actualizada con exito");
        });
      }else{
        this.presentToast('Error al cambiar la imagen de perfil');
      }
      
    })
  
  }

  async presentToast(mensaje) {
    const toast = await this.toastController.create({
      message: mensaje,
      duration: 2000
    });
    toast.present();
  }



}


