import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ModActividadesPage } from './mod-actividades.page';

const routes: Routes = [
  {
    path: '',
    component: ModActividadesPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ModActividadesPageRoutingModule {}
