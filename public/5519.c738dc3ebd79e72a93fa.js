(self.webpackChunkmovilTianguiztli=self.webpackChunkmovilTianguiztli||[]).push([[5519],{5519:(e,t,n)=>{"use strict";n.r(t),n.d(t,{EncuestasPageModule:()=>q});var i=n(1116),o=n(1462),s=n(8809),a=n(9185),c=n(4762),l=n(5614),r=n(1070);function u(e,t){1&e&&(l.TgZ(0,"ion-card-title"),l._uU(1,"Aqui podras votar por los platillos que sean de tu agrado"),l.qZA())}function d(e,t){1&e&&(l.TgZ(0,"ion-card-subtitle"),l._uU(1,"Por el momento no hay encuestas disponibles, cuando se publique alguna te lo notificaremos de inmediato"),l.qZA())}function g(e,t){1&e&&(l.TgZ(0,"ion-card-title"),l._uU(1,"Selecci\xf3n de platillos"),l.qZA())}function h(e,t){1&e&&(l.TgZ(0,"ion-card-subtitle"),l._uU(1,"Nos importa tu opinion por eso te pedimos contestar la siguiente encuesta."),l.qZA())}function f(e,t){if(1&e){const e=l.EpF();l.TgZ(0,"ion-item"),l.TgZ(1,"ion-label",8),l.TgZ(2,"p"),l._uU(3),l.qZA(),l.qZA(),l.TgZ(4,"ion-checkbox",9),l.NdJ("ionChange",function(){const t=l.CHM(e).$implicit;return l.oxw(2).cambiarRegVotos(t)})("ngModelChange",function(e){return t.$implicit.isSelected=e}),l.qZA(),l.qZA()}if(2&e){const e=t.$implicit;l.xp6(3),l.hij(" ",e.platillo,""),l.xp6(1),l.Q6J("ngModel",e.isSelected)}}function p(e,t){if(1&e){const e=l.EpF();l.TgZ(0,"ion-item"),l.TgZ(1,"ion-label",8),l.TgZ(2,"p"),l._uU(3),l.qZA(),l.qZA(),l.TgZ(4,"ion-checkbox",9),l.NdJ("ionChange",function(){const t=l.CHM(e).$implicit;return l.oxw(2).cambiarRegVotos(t)})("ngModelChange",function(e){return t.$implicit.isSelected=e}),l.qZA(),l.qZA()}if(2&e){const e=t.$implicit;l.xp6(3),l.Oqu(e.platillo),l.xp6(1),l.Q6J("ngModel",e.isSelected)}}function m(e,t){if(1&e&&(l.TgZ(0,"ion-card-content"),l.TgZ(1,"ion-list"),l.TgZ(2,"ion-list-header"),l.TgZ(3,"h2"),l._uU(4,"Desayunos"),l.qZA(),l.qZA(),l.YNc(5,f,5,2,"ion-item",7),l.qZA(),l.TgZ(6,"ion-list"),l.TgZ(7,"ion-list-header"),l.TgZ(8,"h2"),l._uU(9,"Comidas"),l.qZA(),l.qZA(),l.YNc(10,p,5,2,"ion-item",7),l.qZA(),l.qZA()),2&e){const e=l.oxw();l.xp6(5),l.Q6J("ngForOf",e.desayunos),l.xp6(5),l.Q6J("ngForOf",e.comidas)}}function Z(e,t){if(1&e){const e=l.EpF();l.TgZ(0,"section",10),l.TgZ(1,"ion-button",11),l.NdJ("click",function(){return l.CHM(e),l.oxw().terminarEncuesta()}),l._uU(2,"Mandar respuesta"),l.qZA(),l.qZA()}}const A=[{path:"",component:(()=>{class e{constructor(e,t,n){this.service=e,this.alertController=t,this.loadingController=n,this.form=[],this.comidas=[],this.desayunos=[],this.confirmEncuesta=!1,this.idsDetalles=[]}ngOnInit(){this.presentLoading("Buscando encuestas").then(()=>{this.encuestasDisponibles().then(e=>{0==e&&this.presentAlert("Alerta","Sin registros","No se encontraron ecuestas, cuando alguna sea publicada te notificaremos de inmediato")})})}encuestasContestadas(){return new Promise((e,t)=>{this.service.getEncuestas().then(t=>{t.CANTIDAD>0?(this.confirmEncuesta=!0,e(!1)):e(!0)})})}infoEncuestas(e){this.service.getInfoEncuestas().then(t=>{var n=t;if(1==e)for(let e of n)this.id_encuesta=e.id_encuesta,Object.assign(e,{isSelected:!1}),this.form.push(e),"COMIDA"==e.tipo?this.comidas.push(e):this.desayunos.push(e);else this.presentAlert("Alerta","Encuesta ya contestada","Tu respuesta ya fue recibida, se tomara en cuenta para los siguientes menus")})}encuestasDisponibles(){return new Promise(e=>{this.service.getInfoEncuestasDisponibles().then(t=>{console.log(t),t.CANTIDAD>0?this.encuestasContestadas().then(e=>{this.infoEncuestas(e)}):e(!1)})})}cambiarRegVotos(e){return console.log(e),new Promise(()=>{var t={id_detalle:e.id_detalle};1==e.isSelected?(console.log("Seleccionado"),this.service.addDatosEncuesta(t,"sum").then(t=>{1!==t.affectedRows?console.log("Error al seleccionar"):this.idsDetalles.push(e.id_detalle)})):this.service.addDatosEncuesta(t,"res").then(t=>{1!==t.affectedRows?console.log("Error al seleccionar"):this.idsDetalles.push(e.id_detalle)})})}terminarEncuesta(){var e={id_encuesta:this.id_encuesta,id_usuario:window.localStorage.getItem("id")};this.service.addDatosEncuesta(e,"fin").then(e=>{if(console.log(e),1!==e.affectedRows)console.log("Error al guardar");else{for(let e of this.idsDetalles){var t={id_encuesta:this.id_encuesta,id_usuario:window.localStorage.getItem("id"),id_detalle:e};this.service.addDatosEncuesta(t,"detail").then(e=>{1!==e.affectedRows&&(console.log("Error fatal"),alert("Error fatal"))})}this.presentAlert("Enceusta","Tue encuesta a sido enviada extiosamente","").then(()=>{window.location.reload()})}})}presentAlert(e,t,n){return(0,c.mG)(this,void 0,void 0,function*(){const i=yield this.alertController.create({cssClass:"my-custom-class",header:e,subHeader:t,message:n,buttons:["OK"]});yield i.present();const{role:o}=yield i.onDidDismiss();console.log("onDidDismiss resolved with role",o)})}presentLoading(e){return(0,c.mG)(this,void 0,void 0,function*(){const t=yield this.loadingController.create({cssClass:"my-custom-class",message:e,duration:2e3});yield t.present(),yield t.onDidDismiss(),console.log("Loading dismissed!")})}}return e.\u0275fac=function(t){return new(t||e)(l.Y36(r.T),l.Y36(s.Br),l.Y36(s.HT))},e.\u0275cmp=l.Xpm({type:e,selectors:[["app-encuestas"]],decls:22,vars:6,consts:[["color","tian"],["slot","start"],["autoHide","false"],[1,"ion-padding-bottom"],["src","../../assets/img-app/icon_1024.png"],[4,"ngIf"],["class"," full-width ",4,"ngIf"],[4,"ngFor","ngForOf"],[1,"ion-text-wrap"],["slot","end",3,"ngModel","ionChange","ngModelChange"],[1,"full-width"],["expand","full ","color","primary",3,"click"]],template:function(e,t){1&e&&(l.TgZ(0,"ion-header"),l.TgZ(1,"ion-toolbar",0),l.TgZ(2,"ion-buttons",1),l._UZ(3,"ion-menu-button",2),l.qZA(),l.TgZ(4,"ion-title"),l._uU(5,"Encuestas"),l.qZA(),l.qZA(),l.qZA(),l.TgZ(6,"ion-content"),l.TgZ(7,"ion-card"),l.TgZ(8,"ion-card-header"),l.TgZ(9,"ion-item",3),l.TgZ(10,"ion-avatar",1),l._UZ(11,"img",4),l.qZA(),l.TgZ(12,"ion-label"),l.TgZ(13,"h3"),l._uU(14,"Comercializadora Tianguiztli"),l.qZA(),l._UZ(15,"p"),l.qZA(),l.qZA(),l.YNc(16,u,2,0,"ion-card-title",5),l.YNc(17,d,2,0,"ion-card-subtitle",5),l.YNc(18,g,2,0,"ion-card-title",5),l.YNc(19,h,2,0,"ion-card-subtitle",5),l.qZA(),l.YNc(20,m,11,2,"ion-card-content",5),l.YNc(21,Z,3,0,"section",6),l.qZA(),l.qZA()),2&e&&(l.xp6(16),l.Q6J("ngIf",0==t.form.length),l.xp6(1),l.Q6J("ngIf",0==t.form.length),l.xp6(1),l.Q6J("ngIf",t.form.length>0),l.xp6(1),l.Q6J("ngIf",t.form.length>0),l.xp6(1),l.Q6J("ngIf",t.form.length>0),l.xp6(1),l.Q6J("ngIf",t.form.length>0))},directives:[s.Gu,s.sr,s.Sm,s.fG,s.wd,s.W2,s.PM,s.Zi,s.Ie,s.BJ,s.Q$,i.O5,s.gZ,s.tO,s.FN,s.q_,s.yh,i.sg,s.nz,s.w,o.JJ,o.On,s.YG],styles:["*[_ngcontent-%COMP%]{font-family:Anton,sans-serif}ion-header[_ngcontent-%COMP%], ion-toolbar[_ngcontent-%COMP%]{background-color:#ee701e}"]}),e})()}];let T=(()=>{class e{}return e.\u0275fac=function(t){return new(t||e)},e.\u0275mod=l.oAB({type:e}),e.\u0275inj=l.cJS({imports:[[a.Bz.forChild(A)],a.Bz]}),e})(),q=(()=>{class e{}return e.\u0275fac=function(t){return new(t||e)},e.\u0275mod=l.oAB({type:e}),e.\u0275inj=l.cJS({imports:[[i.ez,o.u5,s.Pc,T]]}),e})()}}]);