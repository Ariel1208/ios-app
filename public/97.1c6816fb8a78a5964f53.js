(self.webpackChunkmovilTianguiztli=self.webpackChunkmovilTianguiztli||[]).push([[97],{97:(n,t,o)=>{"use strict";o.r(t),o.d(t,{LoginAppPageModule:()=>d});var e=o(1116),i=o(1462),r=o(8809),s=o(9185),a=o(4762),c=o(5614),l=o(1070);const g=[{path:"",component:(()=>{class n{constructor(n,t,o,e,i){this.service=n,this.router=t,this.controlMenu=o,this.loadingController=e,this.toastController=i}ngOnInit(){this.controlMenu.enable(!1),this.validarSesion()}validarSesion(){window.localStorage.getItem("nombre")&&this.router.navigate(["inicio/"])}login(n,t){this.service.LoginPost({email:n.value,pass:t.value}).then(n=>{var t=[];if(n.id_usuario){var o=n.ruta_imagen;t=o.split("/"),console.log(t),o="sin"==t[0]?"https://pruebas.tianguiztli.com/check/imagenesUsuarios/anonimo.png":"https://pruebas.tianguiztli.com/check/"+t[1]+"/"+t[2]+"/"+t[3],this.presentLoading(n.nombre).then(t=>{window.localStorage.setItem("id",n.id_usuario),window.localStorage.setItem("nombre",n.nombre),window.localStorage.setItem("mail",n.correo),window.localStorage.setItem("img",o),this.router.navigate(["/inicio"])})}else this.presentToast()})}presentLoading(n){return(0,a.mG)(this,void 0,void 0,function*(){const t=yield this.loadingController.create({cssClass:"my-custom-class",message:"Bienvenido "+n,duration:2e3});yield t.present(),yield t.onDidDismiss()})}presentToast(){return(0,a.mG)(this,void 0,void 0,function*(){(yield this.toastController.create({message:"Datos incorrectos",duration:2e3})).present()})}}return n.\u0275fac=function(t){return new(t||n)(c.Y36(l.T),c.Y36(s.F0),c.Y36(r._q),c.Y36(r.HT),c.Y36(r.yF))},n.\u0275cmp=c.Xpm({type:n,selectors:[["app-login-app"]],decls:24,vars:0,consts:[["id","header",1,"ion-padding-top"],["src","../../assets/img-app/icon_1024.jpeg"],["for",""],["id","form"],[1,"ion-margin-bottom"],["position",""],["type","text"],["email",""],["pass",""],["color","tian","expand","block","shape","round",3,"click"]],template:function(n,t){if(1&n){const n=c.EpF();c.TgZ(0,"ion-header"),c.TgZ(1,"ion-toolbar"),c.TgZ(2,"ion-title"),c._uU(3,"Bienvenido"),c.qZA(),c.qZA(),c.qZA(),c.TgZ(4,"ion-content"),c.TgZ(5,"ion-content"),c.TgZ(6,"div",0),c._UZ(7,"img",1),c.TgZ(8,"label",2),c.TgZ(9,"h2"),c._uU(10,"Comercializadora Tianguiztli"),c.qZA(),c.qZA(),c.qZA(),c.TgZ(11,"form",3),c.TgZ(12,"ion-item",4),c.TgZ(13,"ion-label",5),c._uU(14,"Correo empresarial:"),c.qZA(),c._UZ(15,"ion-input",6,7),c.qZA(),c.TgZ(17,"ion-item",4),c.TgZ(18,"ion-label",5),c._uU(19,"Contrase\xf1a:"),c.qZA(),c._UZ(20,"ion-input",6,8),c.qZA(),c.TgZ(22,"ion-button",9),c.NdJ("click",function(){c.CHM(n);const o=c.MAs(16),e=c.MAs(21);return t.login(o,e)}),c._uU(23,"Iniciar sesi\xf3n"),c.qZA(),c.qZA(),c.qZA(),c.qZA()}},directives:[r.Gu,r.sr,r.wd,r.W2,i._Y,i.JL,i.F,r.Ie,r.Q$,r.pK,r.j9,r.YG],styles:["*[_ngcontent-%COMP%]{font-family:Anton,sans-serif}ion-toolbar[_ngcontent-%COMP%]{--background:#ee701e;letter-spacing:4px;color:#eff0f3}ion-toolbar[_ngcontent-%COMP%]   ion-button[_ngcontent-%COMP%]{font-size:17px}ion-content[_ngcontent-%COMP%]{--background:#eff0f3}ion-content[_ngcontent-%COMP%]   #header[_ngcontent-%COMP%]{display:flex;flex-direction:column;align-items:center}ion-content[_ngcontent-%COMP%]   #header[_ngcontent-%COMP%]   h1[_ngcontent-%COMP%]{font-weight:700;font-size:26px;color:#010100;margin-bottom:15%}ion-content[_ngcontent-%COMP%]   #header[_ngcontent-%COMP%]   img[_ngcontent-%COMP%]{width:155px;height:155px;border-radius:25%;border:3px solid #000}ion-content[_ngcontent-%COMP%]   #form[_ngcontent-%COMP%]{margin-top:15%;padding-left:30px;padding-right:30px}ion-content[_ngcontent-%COMP%]   #form[_ngcontent-%COMP%]   ion-button[_ngcontent-%COMP%]{background-color:#ee701e;margin-top:35px;height:48px;font-size:18px;text-transform:none;border-radius:50px;box-shadow:1px 8px 8px 0 #0000000d;--box-shadow:none}ion-content[_ngcontent-%COMP%]   #form[_ngcontent-%COMP%]   ion-item[_ngcontent-%COMP%]   ion-label[_ngcontent-%COMP%]{font-family:Anton,sans-serif;font-size:15px}ion-content[_ngcontent-%COMP%]   #form[_ngcontent-%COMP%]   ion-item[_ngcontent-%COMP%]   ion-input[_ngcontent-%COMP%]{letter-spacing:3px;color:#ee701e}"]}),n})()}];let p=(()=>{class n{}return n.\u0275fac=function(t){return new(t||n)},n.\u0275mod=c.oAB({type:n}),n.\u0275inj=c.cJS({imports:[[s.Bz.forChild(g)],s.Bz]}),n})(),d=(()=>{class n{}return n.\u0275fac=function(t){return new(t||n)},n.\u0275mod=c.oAB({type:n}),n.\u0275inj=c.cJS({imports:[[e.ez,i.u5,r.Pc,p]]}),n})()}}]);