import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { menuController } from '@ionic/core';
import { MenuController } from '@ionic/angular';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {

  public nombre:string;
  public mail:string;
  public img:string;

  public appPages = [
    { title: 'Comedor', url: '/app/tabs/inicio', icon: 'fast-food' },
    { title: 'Mi salud', url: 'salud-empleado', icon: 'fitness' },
    { title: 'Buzon de quejas', url: 'buzon-quejas', icon: 'recording' },
  ];



  constructor( 
    private router: Router,
    private menu : MenuController
    ) {}

  logOut(){
    window.localStorage.clear();
    this.menu.enable(false,'custom-menu');
    this.router.navigate(['login-app/'])
  } 

  async setUserLoggedIn() {
    var elemento =   { title: 'Chequeo de actividades ', url: 'actividades', icon: 'checkmark-done-circle' };

    if(window.localStorage.getItem('mod_actividades') == '1'){
      for(let i = 0; i<this.appPages.length;i++){
        if(this.appPages[i].url === 'actividades'){
          this.appPages.splice(i);
        }
        
      }
      this.appPages.push(elemento);
      
    }
    this.nombre = await window.localStorage.getItem('nombre');
    this.mail = await window.localStorage.getItem('mail');
    this.img = await window.localStorage.getItem('img');
  }
  
}
