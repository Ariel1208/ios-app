import { Component, OnInit } from '@angular/core';
import { ActionSheetController } from '@ionic/angular';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.page.html',
  styleUrls: ['./perfil.page.scss'],
})
export class PerfilPage implements OnInit {

  constructor(
    private actionSheetController:ActionSheetController
  ) { }

  public img="";
  public nombre="";
  public email ="";
  
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
}
