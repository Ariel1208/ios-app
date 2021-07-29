import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { SaludEmpleadoPageRoutingModule } from './salud-empleado-routing.module';

import { SaludEmpleadoPage } from './salud-empleado.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    SaludEmpleadoPageRoutingModule
  ],
  declarations: [SaludEmpleadoPage]
})
export class SaludEmpleadoPageModule {}
