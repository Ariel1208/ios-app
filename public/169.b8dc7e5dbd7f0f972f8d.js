(self.webpackChunkmovilTianguiztli=self.webpackChunkmovilTianguiztli||[]).push([[169],{9415:(t,r,e)=>{"use strict";e.r(r),e.d(r,{EncuestasPageModule:()=>l});var s=e(1116),i=e(1462),o=e(8809),a=e(9185),u=e(1888),n=e(5614);const h=[{path:"",component:u.h}];let c=(()=>{class t{}return t.\u0275fac=function(r){return new(r||t)},t.\u0275mod=n.oAB({type:t}),t.\u0275inj=n.cJS({imports:[[a.Bz.forChild(h)],a.Bz]}),t})(),l=(()=>{class t{}return t.\u0275fac=function(r){return new(r||t)},t.\u0275mod=n.oAB({type:t}),t.\u0275inj=n.cJS({imports:[[s.ez,i.u5,o.Pc,c]]}),t})()},1070:(t,r,e)=>{"use strict";e.d(r,{T:()=>a});var s=e(5614),i=e(2693),o=e(9317);let a=(()=>{class t{constructor(t,r){this.http=t,this.storage=r,this.url="https://miapp-tianguiztli.herokuapp.com/"}getUsers(){var t=this.url+"Usuarios";return new Promise(r=>{this.http.get(t).subscribe(t=>{r(t)},t=>{if(t)throw t})})}LoginPost(t){var r=this.url+"validacionUsuario";return new Promise((e,s)=>{this.http.post(r,t).subscribe(t=>{e(t)},t=>{if(t)throw t})})}getPlatillos(){var t=this.url+"platillosSemanales";return new Promise((r,e)=>{this.http.get(t).subscribe(t=>{r(t)},t=>{if(t)throw t})})}getPagos(){var t=this.url+"pagosUsuario/"+window.localStorage.getItem("id");return new Promise((r,e)=>{this.http.get(t).subscribe(t=>{r(t)},t=>{if(t)throw t})})}getAdeudos(){var t=this.url+"adeudosUsuario/"+window.localStorage.getItem("id");return new Promise((r,e)=>{this.http.get(t).subscribe(t=>{r(t)},t=>{if(t)throw t})})}getEncuestas(){var t=this.url+"encuestasUsuario/"+window.localStorage.getItem("id");return new Promise((r,e)=>{this.http.get(t).subscribe(t=>{r(t[0])},t=>{if(t)throw t})})}getInfoEncuestas(){var t=this.url+"detallesEncuesta";return new Promise((r,e)=>{this.http.get(t).subscribe(t=>{r(t)},t=>{if(t)throw t})})}getInfoEncuestasDisponibles(){var t=this.url+"FechasEncuestas";return new Promise((r,e)=>{this.http.get(t).subscribe(t=>{r(t[0])},t=>{if(t)throw t})})}addDatosEncuesta(t,r){var e=this.url+"contestarEncuesta/"+r;return new Promise((r,s)=>{this.http.post(e,t).subscribe(t=>{r(t)},t=>{if(t)throw t})})}getNotificaciones(){var t=this.url+"obtenerNotificacionUsuario/"+window.localStorage.getItem("id");return new Promise((r,e)=>{this.http.get(t).subscribe(t=>{r(t)},t=>{if(t)throw t})})}tareaCloudStorage(t,r){return this.storage.upload(t,r)}referenciaCloudStorage(t){return this.storage.ref(t)}cambiarUrlImgUsuario(t){var r={url:t},e=this.url+"CambiarUrlImg/"+window.localStorage.getItem("id");return new Promise((t,s)=>{this.http.post(e,r).subscribe(r=>{t(r)},t=>{if(t)throw t})})}}return t.\u0275fac=function(r){return new(r||t)(s.LFG(i.eN),s.LFG(o.Q1))},t.\u0275prov=s.Yz7({token:t,factory:t.\u0275fac,providedIn:"root"}),t})()}}]);