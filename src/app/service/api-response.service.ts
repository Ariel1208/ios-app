import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AngularFireStorage } from '@angular/fire/storage';

@Injectable({
  providedIn: 'root'
})
export class ApiResponseService {

  url = 'https://miapp-tianguiztli.herokuapp.com/';

  constructor(public http: HttpClient,private storage: AngularFireStorage) { }


  getUsers(){
    var newUrl = this.url+ 'Usuarios'
    return new Promise(resolve=>{
      this.http.get(newUrl).subscribe(data=>{
          resolve(data);
      },error=>{
        if(error) throw error;
      });
    });
  }

  LoginPost(data){
    var newUrl = this.url+ 'validacionUsuario'
    return new Promise((resolve, reject) =>{
      this.http.post(newUrl,data).subscribe(data =>{
        
          resolve (data);
      },error=>{
        if(error) throw error;
      });
    });
  }

  getPlatillos(){
    var newUrl = this.url+ 'platillosSemanales'
    return new Promise((resolve, reject) =>{
      this.http.get(newUrl).subscribe(data =>{           
        resolve (data);
      },error=>{
        if(error) throw error;
      });
    });
  }

  getPagos(){
    var newUrl = this.url+ 'pagosUsuario/'+window.localStorage.getItem('id');
    return new Promise((resolve, reject) =>{
      this.http.get(newUrl).subscribe(data =>{
          resolve (data);
      },error=>{
        if(error) throw error;
      });
    });
  }

  getAdeudos(){
    var newUrl = this.url+ 'adeudosUsuario/'+window.localStorage.getItem('id');
    return new Promise((resolve, reject) =>{
      this.http.get(newUrl).subscribe(data =>{
          resolve (data);
      },error=>{
        if(error) throw error;
      });
    });
  }

  getEncuestas(){
    var newUrl = this.url+ 'encuestasUsuario/'+window.localStorage.getItem('id');
    return new Promise((resolve, reject) =>{
      this.http.get(newUrl).subscribe(data =>{
        
          resolve (data[0]);
      },error=>{
        if(error) throw error;
      });
    });
  }

  getInfoEncuestas(){
    var newUrl = this.url+ 'detallesEncuesta';
    return new Promise((resolve, reject) =>{
      this.http.get(newUrl).subscribe(data =>{
          resolve (data);
      },error=>{
        if(error) throw error;
      });
    });
  }

  getInfoEncuestasDisponibles(){
    var newUrl = this.url+ 'FechasEncuestas';
    return new Promise((resolve, reject) =>{
      this.http.get(newUrl).subscribe(data =>{
          resolve (data[0]);
      },error=>{
        if(error) throw error;
      });
    });
  }

  addDatosEncuesta(data,tip){
    var newUrl = this.url+ 'contestarEncuesta/'+tip
    return new Promise((resolve, reject) =>{
      this.http.post(newUrl,data).subscribe(data =>{
          resolve (data);
      },error=>{
        if(error) throw error;
      });
    });
  }

  getNotificaciones(){
    var newUrl = this.url+ 'obtenerNotificacionUsuario/'+window.localStorage.getItem('id');
    return new Promise((resolve, reject):void =>{
      this.http.get(newUrl).subscribe(data =>{
          resolve (data);
      },error=>{
        if(error) throw error;
      });
    });
  }


  public tareaCloudStorage(nombreArchivo: string, datos: any) {
    return this.storage.upload(nombreArchivo, datos);
  }

  public referenciaCloudStorage(nombreArchivo: string) {
    var url = this.storage.ref(nombreArchivo);
    
    return url;

  }

  public cambiarUrlImgUsuario(url){
    var data ={
      url:url
    }
    var newUrl = this.url+ 'CambiarUrlImg/'+window.localStorage.getItem('id');
    return new Promise((resolve, reject) =>{
      this.http.post(newUrl,data).subscribe(data =>{
          resolve (data);
      },error=>{
        if(error) throw error;
      });
    });
  }

  public getSectores(){
    var newUrl = this.url+ 'buscarSectores';
    return new Promise((resolve, reject) =>{
      this.http.get(newUrl).subscribe(data =>{
          console.log(data);
          resolve (data);
          
      },error=>{
        if(error) throw error;
      });
    });
  }
}
