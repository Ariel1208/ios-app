(self.webpackChunkmovilTianguiztli=self.webpackChunkmovilTianguiztli||[]).push([[2976],{2976:(o,n,t)=>{"use strict";t.r(n),t.d(n,{PagosServicioPageModule:()=>h});var e=t(1116),i=t(1462),s=t(8809),a=t(9185),g=t(5614),r=t(1070);function c(o,n){1&o&&(g.TgZ(0,"p"),g._uU(1,"Dias : 1"),g.qZA())}function Z(o,n){if(1&o&&(g.TgZ(0,"p"),g._uU(1),g.qZA()),2&o){const o=g.oxw().$implicit;g.xp6(1),g.hij("Dias pagados: ",o.dias,"")}}function u(o,n){if(1&o&&(g.TgZ(0,"ion-item"),g.TgZ(1,"ion-avatar",1),g._UZ(2,"img",8),g.qZA(),g.TgZ(3,"ion-label"),g.TgZ(4,"h2"),g._uU(5),g.qZA(),g.TgZ(6,"h3"),g._uU(7),g.qZA(),g.YNc(8,c,2,0,"p",9),g.YNc(9,Z,2,1,"p",9),g.qZA(),g.qZA()),2&o){const o=n.$implicit;g.xp6(5),g.hij("Fecha: ",o.fecha_pago,""),g.xp6(2),g.hij("Monto: $",o.total,""),g.xp6(1),g.Q6J("ngIf",!o.dias),g.xp6(1),g.Q6J("ngIf",o.dias)}}const d=[{path:"",component:(()=>{class o{constructor(o){this.service=o,this.arrayDatos=[],this.arrayPagos=[],this.arrayAdeudos=[]}ngOnInit(){this.getPagosUsuario(),this.getAdeudosUsuarios(),this.service.getPagos().then(o=>{this.arrayDatos=o})}getPagosUsuario(){this.service.getPagos().then(o=>{this.arrayPagos=o,console.log(o)})}getAdeudosUsuarios(){this.service.getAdeudos().then(o=>{this.arrayAdeudos=o,console.log(o)})}segmentChanged(o){this.arrayDatos="pagos"==o.detail.value?this.arrayPagos:this.arrayAdeudos}}return o.\u0275fac=function(n){return new(n||o)(g.Y36(r.T))},o.\u0275cmp=g.Xpm({type:o,selectors:[["app-pagos-servicio"]],decls:31,vars:1,consts:[["color","tian"],["slot","start"],["autoHide","false"],["src","../../assets/img-app/icon_1024.png"],["color","danger","value","pagos",3,"ionChange"],["value","pagos"],["value","adeudos"],[4,"ngFor","ngForOf"],["src","../../assets/img-app/cash.png"],[4,"ngIf"]],template:function(o,n){1&o&&(g.TgZ(0,"ion-header"),g.TgZ(1,"ion-toolbar",0),g.TgZ(2,"ion-buttons",1),g._UZ(3,"ion-menu-button",2),g.qZA(),g.TgZ(4,"ion-title"),g._uU(5,"Pagos y servicios"),g.qZA(),g.qZA(),g.qZA(),g.TgZ(6,"ion-content"),g.TgZ(7,"ion-card"),g.TgZ(8,"ion-card-header"),g.TgZ(9,"ion-list"),g.TgZ(10,"ion-item"),g.TgZ(11,"ion-avatar",1),g._UZ(12,"img",3),g.qZA(),g.TgZ(13,"ion-label"),g.TgZ(14,"h2"),g._uU(15,"Servicio de comedot"),g.qZA(),g.TgZ(16,"h3"),g._uU(17,"Costo semanal: $50 pesos"),g.qZA(),g.qZA(),g.qZA(),g.TgZ(18,"ion-item"),g.TgZ(19,"ion-segment",4),g.NdJ("ionChange",function(o){return n.segmentChanged(o)}),g.TgZ(20,"ion-segment-button",5),g.TgZ(21,"ion-label"),g._uU(22,"Pagos"),g.qZA(),g.qZA(),g.TgZ(23,"ion-segment-button",6),g.TgZ(24,"ion-label"),g._uU(25,"Adeudos"),g.qZA(),g.qZA(),g.qZA(),g.qZA(),g.qZA(),g.qZA(),g.TgZ(26,"ion-card-content"),g.TgZ(27,"ion-list"),g.TgZ(28,"ion-list-header"),g._uU(29," Registros encontrados "),g.qZA(),g.YNc(30,u,10,4,"ion-item",7),g.qZA(),g.qZA(),g.qZA(),g.qZA()),2&o&&(g.xp6(30),g.Q6J("ngForOf",n.arrayDatos))},directives:[s.Gu,s.sr,s.Sm,s.fG,s.wd,s.W2,s.PM,s.Zi,s.q_,s.Ie,s.BJ,s.Q$,s.cJ,s.QI,s.GO,s.FN,s.yh,e.sg,e.O5],styles:["*[_ngcontent-%COMP%]{font-family:Anton,sans-serif}ion-header[_ngcontent-%COMP%], ion-toolbar[_ngcontent-%COMP%]{background-color:#ee701e}ion-content[_ngcontent-%COMP%]{background:#2b5a94}ion-content[_ngcontent-%COMP%]   ion-card[_ngcontent-%COMP%]{color:#2d334a;width:100%;border-radius:14px;padding:14px;background:#fffffe}"]}),o})()}];let l=(()=>{class o{}return o.\u0275fac=function(n){return new(n||o)},o.\u0275mod=g.oAB({type:o}),o.\u0275inj=g.cJS({imports:[[a.Bz.forChild(d)],a.Bz]}),o})(),h=(()=>{class o{}return o.\u0275fac=function(n){return new(n||o)},o.\u0275mod=g.oAB({type:o}),o.\u0275inj=g.cJS({imports:[[e.ez,i.u5,s.Pc,l]]}),o})()}}]);