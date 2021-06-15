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

  public appPages = [
    { title: 'Inicio', url: '/inicio', icon: 'home' },
    { title: 'Pagos', url: '/pagos-servicio', icon: 'cash' },
    { title: 'Encuestas', url: '/encuestas', icon: 'checkbox' },
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
    this.nombre = await window.localStorage.getItem('nombre');
    this.mail = await window.localStorage.getItem('mail');
  }
  
}
