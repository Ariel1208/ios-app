import { Component } from '@angular/core';

import { PopoverController } from '@ionic/angular';


@Component({
  selector: 'app-informacion-empresa',
  templateUrl: './informacion-empresa.page.html',
  styleUrls: ['./informacion-empresa.page.scss'],
})
export class InformacionEmpresaPage {

  location = 'madison';
  conferenceDate = '2047-05-17';

  selectOptions = {
    header: 'Select a Location'
  };

  constructor(public popoverCtrl: PopoverController) { }

 
}
