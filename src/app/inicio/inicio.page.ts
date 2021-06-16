import { Component, OnInit } from '@angular/core';
import { ActionSheetController, MenuController, IonSlides } from '@ionic/angular';
import { ApiResponseService } from '../service/api-response.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.page.html',
  styleUrls: ['./inicio.page.scss'],
})
export class InicioPage implements OnInit {

  searchNotifications = false;
   arrayPlatillosL : any =[];
   arrayPlatillosM : any =[];
   arrayPlatillosMi : any =[];
   arrayPlatillosJ : any =[];
   arrayPlatillosV : any =[];
   arrays: any =[];

  constructor(
    private menu:MenuController,
    private servicio:ApiResponseService,
    public actionSheetController: ActionSheetController,
    private router: Router
    ) { }

  ngOnInit() {
    this.menu.enable(true);
    this.getPlatillosSemanales();
    this.validarSesion();
  }

  validarSlide(){
    const fecha = new Date();  
    this.slidesOptions.initialSlide = fecha.getDay()-1; 
    console.log( this.slidesOptions.initialSlide)
  }
  
  validarSesion(){
    if(!window.localStorage.getItem("nombre")){
      this.router.navigate(['login-app/'])
    }
  }


  getPlatillosSemanales(){
    this.validarSlide();
    
    this.servicio.getPlatillos().then(res =>{
      
      var platillos = res[0];
      const dias = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"];

      for(let e of platillos){
        const numeroDia = new Date(e.fecha_seguimiento).getDay();
        e.fecha_seguimiento = new Date(e.fecha_seguimiento).toDateString();
        const nombreDia = dias[numeroDia];

        

        if(nombreDia == 'Lunes'){
          this.arrayPlatillosL.push(e);
        }else
        if(nombreDia == 'Martes'){
          this.arrayPlatillosM.push(e);
        }else
        if(nombreDia == 'Miercoles'){
          this.arrayPlatillosMi.push(e);
        }else
        if(nombreDia == 'Jueves'){
          this.arrayPlatillosJ.push(e);
        }else
        if(nombreDia == 'Viernes'){
          this.arrayPlatillosV.push(e);
        };
      }
      this.arrays.push(this.arrayPlatillosL,this.arrayPlatillosM,this.arrayPlatillosMi,this.arrayPlatillosJ,this.arrayPlatillosV)
      
    })


  }
  
  slidesOptions = {
    slidesPerView: 1,
    initialSlide: null
  }

  async presentActionSheet() {
    const actionSheet = await this.actionSheetController.create({
      header: 'Opciones',
      cssClass: 'my-custom-class',
      buttons: [{
        text: 'Ver encuestas',
        icon: 'receipt',
        handler: () => {
          console.log('Delete clicked');
          this.router.navigate(['encuestas/']);
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

  buscarNotificaciones(){
    return new Promise((resolve)=>{
      this.searchNotifications = true;
      setTimeout(() => {
        this.searchNotifications = false
      }, 2000)
    })
  }  


  actualizarPlatillos(){
    this.arrayPlatillosL =[];
    this.arrayPlatillosM =[];
    this.arrayPlatillosMi =[];
    this.arrayPlatillosJ =[];
    this.arrayPlatillosV =[];
    this.arrays =[];
    this.getPlatillosSemanales();
  }

 
}
