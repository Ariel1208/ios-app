import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ModActividadesPageRoutingModule } from './mod-actividades-routing.module';

import { ModActividadesPage } from './mod-actividades.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ModActividadesPageRoutingModule
  ],
  declarations: [ModActividadesPage]
})
export class ModActividadesPageModule {}
