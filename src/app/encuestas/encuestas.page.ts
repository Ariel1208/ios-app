import { Component, OnInit } from '@angular/core';
import { ApiResponseService } from '../service/api-response.service';
import { AlertController,LoadingController } from '@ionic/angular';


@Component({
  selector: 'app-encuestas',
  templateUrl: './encuestas.page.html',
  styleUrls: ['./encuestas.page.scss'],
})
export class EncuestasPage implements OnInit {

  public form = [];
  public comidas = [];
  public desayunos = [];
  public confirmEncuesta = false;
  private id_encuesta:any;
  private idsDetalles = [];

  constructor(
    private service: ApiResponseService,
    public alertController: AlertController,
    public loadingController: LoadingController
  ) { }

  ngOnInit() {
    this.presentLoading("Buscando encuestas").then(()=>{
      this.encuestasDisponibles().then(res=>{
        if(res == false){
          this.presentAlert("Alerta","Sin registros","No se encontraron ecuestas, cuando alguna sea publicada te notificaremos de inmediato");
        }
      })
    });

  }

  encuestasContestadas(){
    return new Promise((resolve,reject)=>{
      this.service.getEncuestas().then(res =>{
          if(res['CANTIDAD']>0){
            this.confirmEncuesta = true;
            resolve(false); 
          }else{
            resolve(true);
          }
      })
    }) 
  }

  infoEncuestas(confirm){
    this.service.getInfoEncuestas().then(res =>{
      var datos:any = res;

      if(confirm == true){
        for(let e of datos){
          this.id_encuesta=e.id_encuesta;
          Object.assign(e, {"isSelected":false})          
          this.form.push(e);
  
          if(e.tipo == "COMIDA"){
            this.comidas.push(e);
          }else{
            this.desayunos.push(e);
          }
        } 
      }else{
        this.presentAlert("Alerta","Encuesta ya contestada","Tu respuesta ya fue recibida, se tomara en cuenta para los siguientes menus")
      }
    
           
    })
  }

  encuestasDisponibles(){
    return new Promise ((resolve)=>{
      this.service.getInfoEncuestasDisponibles().then(res =>{
        console.log(res);
        
        if(res['CANTIDAD']>0){
          this.encuestasContestadas().then(res =>{
            this.infoEncuestas(res);
          });
        }else{
          resolve (false);
        }
        
      })
    })
  }

  cambiarRegVotos(e){
    console.log(e);
    return new Promise (()=>{
      var data ={
        "id_detalle":e.id_detalle
      };
      
      if(e.isSelected == true){
        console.log("Seleccionado");
        
        this.service.addDatosEncuesta(data,'sum').then(res =>{
          if(res['affectedRows'] !== 1){
            console.log("Error al seleccionar");
          }else{
            this.idsDetalles.push(e.id_detalle);
          }
          
        });

      }else{
        this.service.addDatosEncuesta(data,'res').then(res =>{
          if(res['affectedRows'] !== 1){
            console.log("Error al seleccionar");
          }else{
            this.idsDetalles.push(e.id_detalle);
          }
        });
      
      }
      
    })  
  }

  terminarEncuesta(){
    var data ={
      "id_encuesta":this.id_encuesta,
      "id_usuario":window.localStorage.getItem('id')
    }
    this.service.addDatosEncuesta(data,'fin').then(res =>{
      console.log(res);
      if(res['affectedRows'] !== 1){
        console.log("Error al guardar");
      }else{
        for(let e of this.idsDetalles){
          var array={
            "id_encuesta":this.id_encuesta,
            "id_usuario":window.localStorage.getItem('id'),
            "id_detalle":e
          }
          this.service.addDatosEncuesta(array,'detail').then(res =>{
            if(res['affectedRows'] !== 1){
             console.log("Error fatal");
             alert("Error fatal");
            }
          })
        }
        this.presentAlert("Enceusta","Tue encuesta a sido enviada extiosamente","").then(()=>{
          window.location.reload();
        })
        
      }
      
    });
  }

  async presentAlert(header,subheader,messaje) {
    const alert = await this.alertController.create({
      cssClass: 'my-custom-class',
      header: header,
      subHeader:subheader,
      message: messaje,
      buttons: ['OK']
    });

    await alert.present();

    const { role } = await alert.onDidDismiss();
    console.log('onDidDismiss resolved with role', role);
  }

  async presentLoading(message) {
    const loading = await this.loadingController.create({
      cssClass: 'my-custom-class',
      message: message,
      duration: 2000
    });
    await loading.present();

    const { role, data } = await loading.onDidDismiss();
    console.log('Loading dismissed!');
  }

}
