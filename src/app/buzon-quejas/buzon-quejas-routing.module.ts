import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { BuzonQuejasPage } from './buzon-quejas.page';

const routes: Routes = [
  {
    path: '',
    component: BuzonQuejasPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class BuzonQuejasPageRoutingModule {}
