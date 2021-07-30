import { Component, OnInit } from '@angular/core';
import { ApiResponseService } from '../service/api-response.service';

@Component({
  selector: 'app-mod-actividades',
  templateUrl: './mod-actividades.page.html',
  styleUrls: ['./mod-actividades.page.scss'],
})
export class ModActividadesPage implements OnInit {

  arraySectores:any;
  constructor(
    private service:ApiResponseService
  ) { }

  ngOnInit() {
  this.getSectores();
  }


  getSectores(){
    this.service.getSectores().then(res =>{
      this.arraySectores = res;
      console.log(this.arraySectores);
      
    })
  }
}
