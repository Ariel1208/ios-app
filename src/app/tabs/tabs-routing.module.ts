import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { TabsPage } from './tabs.page';
import { InicioPage } from '../inicio/inicio.page';
import { PagosServicioPage } from '../pagos-servicio/pagos-servicio.page';
import { EncuestasPage } from '../encuestas/encuestas.page';
import { InformacionEmpresaPage } from '../informacion-empresa/informacion-empresa.page';

const routes: Routes = [
  {
    path: 'tabs',
    component: TabsPage,
    children: [
      {
        path: 'inicio',
        children: [
          {
            path: '',
            component: InicioPage,
          }
        ]
      },
      {
        path: 'pagos',
        children: [
          {
            path: '',
            component: PagosServicioPage,
          }
        ]
      },
      {
        path: 'encuestas',
        children: [
          {
            path: '',
            component: EncuestasPage,
          }
        ]
      },
      {
        path: 'info',
        children: [
          {
            path: '',
            component: InformacionEmpresaPage,
          }
        ]
      },
    ]
  }
];


@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class TabsPageRoutingModule {}
