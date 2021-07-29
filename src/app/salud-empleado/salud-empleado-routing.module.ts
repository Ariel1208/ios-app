import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { SaludEmpleadoPage } from './salud-empleado.page';

const routes: Routes = [
  {
    path: '',
    component: SaludEmpleadoPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class SaludEmpleadoPageRoutingModule {}
