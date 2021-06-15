import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.page.html',
  styleUrls: ['./perfil.page.scss'],
})
export class PerfilPage implements OnInit {

  constructor() { }

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
}
