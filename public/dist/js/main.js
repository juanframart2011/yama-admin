(()=>{"use strict";const e={Renta:["Seleccionar Desarrollo *","Yama Insurgentes Reforma","Yama Jardines del Pedregal","Yama Cuauhtémoc 1233","Yama Alpes","Yama Insurgentes 866","Centro Aguascalientes","Centro Altavista","Centro San Ángel","Centro Insurgentes","Centro Polanco","Centro Pedregal","Punta México","No Aplica"],Venta:["Seleccionar Desarrollo *","Yama Insurgentes Reforma","Yama Jardines del Pedregal","Yama Cuauhtémoc 1233","Yama Alpes","Yama Punta Museo","Yama Bosques Santa Fe - Corporativo","Yama Bosques Santa Fe - Residencial","Punta México","No Aplica"]},t={Renta:["Rango de precio de buscas *","Oficinas","Menos $400 x m2 Renta","+ $400 x m2 Renta"],Venta:["Rango de precio de buscas *","Departamentos","2-3 MDP Venta","3-7 MDP Venta","Oficinas","5-7 MDP Venta","7+ MDP Venta"]},a=[{name:"Yama Insurgentes <br> Reforma",address:"Avenida Insurgentes 64, <br> Col. Juarez",image:"dist/img/projects/insurgentes-reforma/insurgentes-reforma1.jpg",alt:"Yama Insurgentes Reforma",anchor:{corporative:"/venta-renta-oficinas/insurgentes-reforma"},status:["corporative"],type:["rent-corporative","sell-corporative"]},{name:"Yama Jardines del <br> Pedregal",address:"Periférico Sur 3332, <br> Col. Jardines del Pedregal",image:"dist/img/projects/jardines-del-pedregal/jardines-del-pedregal1.jpg",alt:"Yama Jardines del Pedregal",anchor:{corporative:"/venta-renta-oficinas/jardines-del-pedregal"},status:["corporative"],type:["rent-corporative","sell-corporative"]},{name:"Yama Cuauhtémoc <br> 1233",address:"Av. Cuauhtémoc 1233, <br> Col. Santa Cruz Atoyac",image:"dist/img/projects/cuauhtemoc-1233/cuauhtemoc-12331.jpg",alt:"Yama Cuauhtémoc 1233",anchor:{corporative:"/venta-renta-oficinas/cuauhtemoc-1233"},status:["corporative"],type:["rent-corporative","sell-corporative"]},{name:"Yama <br> Alpes",address:"Periférico Sur 2165, <br> Col. Alpes",image:"dist/img/projects/alpes/alpes1.jpg",alt:"Yama Alpes",anchor:{corporative:"/venta-renta-oficinas/alpes"},status:["corporative"],type:["rent-corporative","sell-corporative"]},{name:"Yama Insurgentes <br> 866",address:"Avenida Insurgentes 866, <br> Col. Del Valle Centro",image:"dist/img/projects/insurgentes-866/insurgentes-8661.jpg",alt:"Yama Insurgentes 866",anchor:{corporative:"/renta-oficinas/insurgentes-866"},status:["corporative"],type:["rent-corporative"]},{name:"Yama Punta <br> Museo",address:"Av. División del Norte 3572, <br> Col. San Pablo Tepetlapa",image:"dist/img/projects/punta-museo/punta-museo1.jpg",alt:"Yama Punta Museo",anchor:{residential:"/departamentos-en-venta/punta-museo"},status:["residential"],type:["sell-residential"]},{name:"Yama Bosques <br> Santa Fe - Corporativo",address:"Prolongación Paseo de la Reforma 799, Col. San Gabriel",image:"dist/img/projects/bosques-santa-fe/bosques-santa-fe1.jpg",alt:"Yama Bosques Santa Fe - Corporativo",anchor:{corporative:"/venta-oficinas/bosques-santa-fe-corporativo"},status:["corporative"],type:["sell-corporative"]},{name:"Yama Bosques <br> Santa Fe - Residencial",address:"Prolongación Paseo de la Reforma 799, Col. San Gabriel",image:"dist/img/projects/bosques-santa-fe/bosques-santa-fe1.jpg",alt:"Yama Bosques Santa Fe - Residencial",anchor:{residential:"/departamentos-en-venta/bosques-santa-fe-residencial"},status:["residential"],type:["sell-residential"]},{name:"Centro Altavista",address:"",image:"",alt:"",anchor:{corporative:"/renta-oficinas/altavista"},status:["corporative"],type:[""]},{name:"Centro San Ángel",address:"",image:"",alt:"",anchor:{corporative:"/renta-oficinas/san-angel"},status:["corporative"],type:[""]},{name:"Centro Insurgentes",address:"",image:"",alt:"",anchor:{corporative:"/renta-oficinas/insurgentes"},status:["corporative"],type:[""]},{name:"Centro Polanco",address:"",image:"",alt:"",anchor:{corporative:"/renta-oficinas/polanco"},status:["corporative"],type:[""]},{name:"Centro Pedregal",address:"",image:"",alt:"",anchor:{corporative:"/renta-oficinas/pedregal"},status:["corporative"],type:[""]},{name:"Centro Aguascalientes",address:"",image:"",alt:"",anchor:{corporative:"/renta-oficinas/aguascalientes"},status:["corporative"],type:[""]},{name:"Punta México",address:"",image:"",alt:"",anchor:{corporative:"/venta-renta-oficinas/punta-mexico"},status:["corporative"],type:[""]}];AOS.init(),document.addEventListener("DOMContentLoaded",(function(){let e,t=document.querySelectorAll(".lazy");function a(){e&&clearTimeout(e),e=setTimeout((function(){let e=window.pageYOffset;t.forEach((function(t){t.offsetTop<window.innerHeight+e&&(t.src=t.dataset.src,t.classList.remove("lazy"))})),0==t.length&&(document.removeEventListener("scroll",a),window.removeEventListener("resize",a),window.removeEventListener("orientationChange",a))}),20)}document.addEventListener("scroll",a),window.addEventListener("resize",a),window.addEventListener("orientationChange",a)})),window.addEventListener("scroll",(function(){Math.round(window.scrollY)>50?document.querySelector(".header").classList.add("active"):document.querySelector(".header").classList.remove("active")})),$(document).ready((function(){$(".goto").bind("click",(function(e){e.preventDefault(),$(".checkbox-toggle").prop("checked",!1);var t=$(this).attr("href");return $("html, body").stop().animate({scrollTop:$(t).offset().top-100},1e3,(function(){history.pushState?history.pushState(null,null,t):location.hash=t})),!1}))}));const n=document.querySelector(".button-appointment"),o=document.querySelector(".button-whatsapp"),r=document.querySelector(".button-phone");n&&window.addEventListener("scroll",(function(){Math.round(window.scrollY)>800?(n.classList.add("active"),o.classList.add("active"),r.classList.add("active")):(n.classList.remove("active"),o.classList.remove("active"),r.classList.remove("active"))}));const i=document.querySelector(".menu-residential"),l=document.querySelector(".menu-corporative"),c=document.querySelector(".menu-residential-mobile"),s=document.querySelector(".menu-corporative-mobile");a.forEach((e=>{e.status.forEach((t=>{if("residential"===t){const t=document.createElement("li");t.classList="submenu-item",t.innerHTML=`<a href="${e.anchor.residential}" class="submenu-link text-uppercase">${e.name}</a>`,i.appendChild(t);let a=t.cloneNode(!0);c.appendChild(a)}if("corporative"===t){const t=document.createElement("li");t.classList="submenu-item",t.innerHTML=`<a href="${e.anchor.corporative}" class="submenu-link text-uppercase">${e.name}</a>`,l.appendChild(t);let a=t.cloneNode(!0);s.appendChild(a)}}))})),document.querySelectorAll(".menu-corporative-mobile li a br").forEach((e=>{e.style.display="none"})),document.querySelectorAll(".menu-residential-mobile li a br").forEach((e=>{e.style.display="none"}));const d=document.getElementById("footer-residential"),u=document.getElementById("footer-corporative");a.forEach((e=>{e.status.forEach((t=>{if("residential"===t){const t=document.createElement("li");t.classList="list-item",t.innerHTML=`<a href="${e.anchor.residential}" class="list-link">${e.name.replaceAll("<br>","")}</a>`,d.appendChild(t)}if("corporative"===t){const t=document.createElement("li");t.classList="list-item",t.innerHTML=`<a href="${e.anchor.corporative}" class="list-link">${e.name.replaceAll("<br>","")}</a>`,u.appendChild(t),(e.name.includes("Centro")||e.name.includes("Punta"))&&t.remove()}}))}));var m=new MmenuLight(document.querySelector("#menu"),"all"),p=(m.navigation({title:"YAMA"}),m.offcanvas({}));document.querySelector('a[href="#menu-mobile"]').addEventListener("click",(e=>{e.preventDefault(),p.open()})),document.querySelector('#menu a[href="#contact"]').addEventListener("click",(e=>{p.close()}));const g=document.getElementById("contact-type"),v=document.getElementById("contact-project"),h=document.getElementById("contact-price");g&&g.addEventListener("change",(function(){let a=e[this.value];for(;v.options.length>0;)v.options.remove(0);Array.from(a).forEach((function(e){let t=new Option(e,e);v.appendChild(t)})),v.firstElementChild.hidden=!0,v.firstElementChild.value="",function(e){let a=t[e];for(;h.options.length>0;)h.options.remove(0);Array.from(a).forEach((function(e){let t=new Option(e,e);h.appendChild(t)})),h.firstElementChild.hidden=!0,h.firstElementChild.value="",h.children[1].disabled=!0,h.children[1].value="","Renta"===e?(h.children[2].value="Oficinas - "+h.children[2].value,h.children[3].value="Oficinas - "+h.children[3].value):"Venta"===e&&(h.children[2].value="Departamentos - "+h.children[2].value,h.children[3].value="Departamentos - "+h.children[3].value,h.children[4].disabled=!0,h.children[4].value="",h.children[5].value="Oficinas - "+h.children[5].value,h.children[6].value="Oficinas - "+h.children[6].value)}(this.value)}));const f=document.getElementById("contact-form"),y=document.getElementById("contact-name"),b=document.getElementById("contact-email"),E=document.getElementById("contact-phone"),S=(document.getElementById("contact-message"),document.getElementById("contact-hour")),C=document.getElementById("contact-medium"),w=document.getElementById("contact-price");f&&f.addEventListener("submit",(function(e){e.preventDefault();let t="",a=!1;if(y.value.length<6&&(t+="Ingrese su nombre completo <br>",a=!0),/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(b.value)||(t+="Ingrese un email valido <br>",a=!0),0==g.value.length&&(t+="Seleccione su opción de interes <br>",a=!0),0==v.value.length&&(t+="Seleccione su proyecto de interes <br>",a=!0),0==S.value.length&&(t+="Seleccione un horario de contacto<br>",a=!0),0==C.value.length&&(t+="Seleccione un metodo de contacto <br>",a=!0),0==w.value.length&&(t+="Seleccione un presupuesto aproximado <br>",a=!0),(E.value.length<8||isNaN(E.value))&&(t+="Ingrese un numero de teléfono valido <br>",a=!0),!a)return T(f),fbq("track","CompleteRegistration"),gtag_report_lead();Swal.fire({title:"Error",html:t,icon:"error",confirmButtonText:"CERRAR"}),document.querySelector("body").style.cssText="padding-right: 0"}));const I=document.getElementById("appointment-type"),A=document.getElementById("appointment-project"),B=document.getElementById("appointment-price"),L=document.getElementById("generation1");I&&!L&&I.addEventListener("change",(function(){let a=e[this.value];for(;A.options.length>0;)A.options.remove(0);Array.from(a).forEach((function(e){let t=new Option(e,e);A.appendChild(t)})),A.firstElementChild.hidden=!0,A.firstElementChild.value="",function(e){let a=t[e];for(;B.options.length>0;)B.options.remove(0);Array.from(a).forEach((function(e){let t=new Option(e,e);B.appendChild(t)})),B.firstElementChild.hidden=!0,B.firstElementChild.value="",B.children[1].disabled=!0,B.children[1].value="","Renta"===e?(B.children[2].value="Oficinas - "+B.children[2].value,B.children[3].value="Oficinas - "+B.children[3].value):"Venta"===e&&(B.children[2].value="Departamentos - "+B.children[2].value,B.children[3].value="Departamentos - "+B.children[3].value,B.children[4].disabled=!0,B.children[4].value="",B.children[5].value="Oficinas - "+B.children[5].value,B.children[6].value="Oficinas - "+B.children[6].value)}(this.value)}));const q=document.getElementById("appointment-form"),Y=document.getElementById("appointment-name"),x=document.getElementById("appointment-phone"),O=document.getElementById("appointment-email"),P=document.getElementById("appointment-hour"),R=document.getElementById("appointment-medium"),j=document.getElementById("appointment-price");if(q&&q.addEventListener("submit",(function(e){e.preventDefault();let t="",a=!1;if(Y.value.length<6&&(t+="Ingrese su nombre completo <br>",a=!0),/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(O.value)||(t+="Ingrese un email valido <br>",a=!0),0==I.value.length&&(t+="Seleccione su opción de interes <br>",a=!0),0==A.value.length&&(t+="Seleccione su proyecto de interes <br>",a=!0),0==P.value.length&&(t+="Seleccione un horario de contacto<br>",a=!0),0==R.value.length&&(t+="Seleccione un metodo de contacto <br>",a=!0),0==j.value.length&&(t+="Seleccione un presupuesto aproximado <br>",a=!0),(x.value.length<8||isNaN(x.value))&&(t+="Ingrese un numero de teléfono valido <br>",a=!0),!a)return T(q),fbq("track","CompleteRegistration"),gtag_report_lead();Swal.fire({title:"Error",html:t,icon:"error",confirmButtonText:"CERRAR"}),document.querySelector("body").style.cssText="padding-right: 0",console.log(t)})),localStorage.getItem("utm")){const e=JSON.parse(localStorage.getItem("utm")),t=Date.now(),{expiration:a}=e;t>a&&localStorage.removeItem("utm")}if(localStorage.getItem("gclid")){const e=JSON.parse(localStorage.getItem("gclid")),t=Date.now(),{expiration:a}=e;t>a&&localStorage.removeItem("gclid")}const M=window.location.search;if(M){const e=M.replace("?",""),t=Date.now()+2592e5;if(e.indexOf("utm")>=0){const a=e.split("&");let n={source:"",campaign:"",expiration:t};a.forEach((e=>{if(e.indexOf("utm_source")>=0){const t=e.replace("utm_source=","");n.source=t}else if(e.indexOf("utm_campaign")>=0){const t=e.replace("utm_campaign=","");n.campaign=t}})),localStorage.setItem("utm",JSON.stringify(n))}if(e.indexOf("gclid")>=0){const a={gclid:e.replace("gclid=",""),expiration:t};localStorage.setItem("gclid",JSON.stringify(a))}}function T(e){const t=e,a=e.getAttribute("data-subject"),n=e.getElementsByTagName("input"),o=e.getElementsByTagName("select"),r=e.getElementsByTagName("textarea");let i="",l="",c="";for(let e=0;e<n.length;e++){const t=n[e];"submit"!=t.type&&0!=t.value.length&&(i+=`${t.getAttribute("data-name")}: ${t.value} \n `),"Nombre"===t.getAttribute("data-name")&&(l=t.value),"Email"===t.getAttribute("data-name")&&(c=t.value)}for(let e=0;e<o.length;e++){const t=o[e];i+=`${t.getAttribute("data-name")}: ${t.value} \n `}for(let e=0;e<r.length;e++){const t=r[e];""!==t.value&&(i+=`${t.getAttribute("data-name")}: ${t.value} \n `)}const s=localStorage.getItem("gclid"),d=JSON.parse(localStorage.getItem("utm"));if(s&&(i+=`Google Ads: ${s} \n`),d){const{source:e,campaign:t}=d;i+=`UTM Origen: ${e} \n`,i+=`UTM Campaña: ${t} \n`}!function(e,t,a,n,o){$.post("/dist/services/zendeskPost.php",{subject:e,message:t,name:a,email:n,dataType:"json"}).done((e=>{-1===e.indexOf("error")?(o.reset(),function(){const e=window.location.href;sessionStorage.setItem("url",e),window.location="/cotizacion-enviada.php"}()):D()})).fail((e=>{D(),console.log("Error:",e)}))}(a,i,l,c,t)}function D(){Swal.fire({title:"Error",text:"Ha ocurrido un error al crear tu solicitud.",icon:"error",confirmButtonText:"CERRAR"})}new Swiper(".swiper-services",{spaceBetween:30,loop:!0,speed:2e3,autoplay:{delay:1e4,disableOnInteraction:!1},pagination:{el:".swiper-pagination",clickable:!0}}),setTimeout((()=>{const e=document.createElement("script");e.id="ze-snippet",e.src="https://static.zdassets.com/ekr/snippet.js?key=da6de759-009c-43c1-b3ce-6a66d840af1c",document.body.append(e)}),2e3),r.addEventListener("click",(()=>(fbq("track","Contact"),gtag_report_call())));let N=moment(new Date);const k=N.tz("America/Mexico_city"),z=N.tz("America/Mexico_city").format("dddd"),_=moment("7:00pm","hh:mm a"),J=moment("9:00am","hh:mm a");"Monday"!==z&&"Tuesday"!==z&&"Wednesday"!==z&&"Thursday"!==z&&"Friday"!==z||k.isAfter(J)&&k.isBefore(_)&&r.classList.add("visible")})();