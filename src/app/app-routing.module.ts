import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    redirectTo: 'login-app',
    pathMatch: 'full',
  },
  {
    path: 'login-app',
    loadChildren: () => import('./login-app/login-app.module').then( m => m.LoginAppPageModule)
  },
  {
    path: 'inicio',
    loadChildren: () => import('./inicio/inicio.module').then( m => m.InicioPageModule),
   
  },
  {
    path: 'pagos-servicio',
    loadChildren: () => import('./pagos-servicio/pagos-servicio.module').then( m => m.PagosServicioPageModule)
  },
  {
    path: 'encuestas',
    loadChildren: () => import('./encuestas/encuestas.module').then( m => m.EncuestasPageModule)
  },
  {
    path: 'perfil',
    loadChildren: () => import('./perfil/perfil.module').then( m => m.PerfilPageModule)
  },
  {
    path: 'app',
    loadChildren: () => import('./tabs/tabs.module').then( m => m.TabsPageModule)
  },
  {
    path: 'buzon-quejas',
    loadChildren: () => import('./buzon-quejas/buzon-quejas.module').then( m => m.BuzonQuejasPageModule)
  },
  {
    path: 'salud-empleado',
    loadChildren: () => import('./salud-empleado/salud-empleado.module').then( m => m.SaludEmpleadoPageModule)
  },
  {
    path: 'informacion-empresa',
    loadChildren: () => import('./informacion-empresa/informacion-empresa.module').then( m => m.InformacionEmpresaPageModule)
  },
  {
    path: 'actividades',
    loadChildren: () => import('./mod-actividades/mod-actividades.module').then( m => m.ModActividadesPageModule)
  }




];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
