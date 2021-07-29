import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { BuzonQuejasPageRoutingModule } from './buzon-quejas-routing.module';

import { BuzonQuejasPage } from './buzon-quejas.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    BuzonQuejasPageRoutingModule
  ],
  declarations: [BuzonQuejasPage]
})
export class BuzonQuejasPageModule {}
