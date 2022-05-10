(() => {
    "use strict";
    const e = [{
            name: "Yama Insurgentes <br> Reforma",
            address: "Avenida Insurgentes 64, <br> Col. Juarez",
            image: "dist/img/projects/insurgentes-reforma/insurgentes-reforma1.jpg",
            alt: "Yama Insurgentes Reforma",
            anchor: {
                corporative: "/venta-renta-oficinas/insurgentes-reforma"
            },
            status: ["corporative"],
            type: ["rent-corporative", "sell-corporative"]
        }, {
            name: "Yama Jardines del <br> Pedregal",
            address: "Periférico Sur 3332, <br> Col. Jardines del Pedregal",
            image: "dist/img/projects/jardines-del-pedregal/jardines-del-pedregal1.jpg",
            alt: "Yama Jardines del Pedregal",
            anchor: {
                corporative: "/venta-renta-oficinas/jardines-del-pedregal"
            },
            status: ["corporative"],
            type: ["rent-corporative", "sell-corporative"]
        }, {
            name: "Yama Cuauhtémoc <br> 1233",
            address: "Av. Cuauhtémoc 1233, <br> Col. Santa Cruz Atoyac",
            image: "dist/img/projects/cuauhtemoc-1233/cuauhtemoc-12331.jpg",
            alt: "Yama Cuauhtémoc 1233",
            anchor: {
                corporative: "/venta-renta-oficinas/cuauhtemoc-1233"
            },
            status: ["corporative"],
            type: ["rent-corporative", "sell-corporative"]
        }, {
            name: "Yama <br> Alpes",
            address: "Periférico Sur 2165, <br> Col. Alpes",
            image: "dist/img/projects/alpes/alpes1.jpg",
            alt: "Yama Alpes",
            anchor: {
                corporative: "/venta-renta-oficinas/alpes"
            },
            status: ["corporative"],
            type: ["rent-corporative", "sell-corporative"]
        }, {
            name: "Yama Insurgentes <br> 866",
            address: "Avenida Insurgentes 866, <br> Col. Del Valle Centro",
            image: "dist/img/projects/insurgentes-866/insurgentes-8661.jpg",
            alt: "Yama Insurgentes 866",
            anchor: {
                corporative: "/renta-oficinas/insurgentes-866"
            },
            status: ["corporative"],
            type: ["rent-corporative"]
        }, {
            name: "Yama Punta <br> Museo",
            address: "Av. División del Norte 3572, <br> Col. San Pablo Tepetlapa",
            image: "dist/img/projects/punta-museo/punta-museo1.jpg",
            alt: "Yama Punta Museo",
            anchor: {
                residential: "/departamentos-en-venta/punta-museo"
            },
            status: ["residential"],
            type: ["sell-residential"]
        }, {
            name: "Yama Bosques <br> Santa Fe - Corporativo",
            address: "Prolongación Paseo de la Reforma 799, Col. San Gabriel",
            image: "dist/img/projects/bosques-santa-fe/bosques-santa-fe1.jpg",
            alt: "Yama Bosques Santa Fe - Corporativo",
            anchor: {
                corporative: "/venta-oficinas/bosques-santa-fe-corporativo"
            },
            status: ["corporative"],
            type: ["sell-corporative"]
        }, {
            name: "Yama Bosques <br> Santa Fe - Residencial",
            address: "Prolongación Paseo de la Reforma 799, Col. San Gabriel",
            image: "dist/img/projects/bosques-santa-fe/bosques-santa-fe1.jpg",
            alt: "Yama Bosques Santa Fe - Residencial",
            anchor: {
                residential: "/departamentos-en-venta/bosques-santa-fe-residencial"
            },
            status: ["residential"],
            type: ["sell-residential"]
        }, {
            name: "Centro Altavista",
            address: "",
            image: "",
            alt: "",
            anchor: {
                corporative: "/renta-oficinas/altavista"
            },
            status: ["corporative"],
            type: [""]
        }, {
            name: "Centro San Ángel",
            address: "",
            image: "",
            alt: "",
            anchor: {
                corporative: "/renta-oficinas/san-angel"
            },
            status: ["corporative"],
            type: [""]
        }, {
            name: "Centro Insurgentes",
            address: "",
            image: "",
            alt: "",
            anchor: {
                corporative: "/renta-oficinas/insurgentes"
            },
            status: ["corporative"],
            type: [""]
        }, {
            name: "Centro Polanco",
            address: "",
            image: "",
            alt: "",
            anchor: {
                corporative: "/renta-oficinas/polanco"
            },
            status: ["corporative"],
            type: [""]
        }, {
            name: "Centro Pedregal",
            address: "",
            image: "",
            alt: "",
            anchor: {
                corporative: "/renta-oficinas/pedregal"
            },
            status: ["corporative"],
            type: [""]
        }, {
            name: "Centro Aguascalientes",
            address: "",
            image: "",
            alt: "",
            anchor: {
                corporative: "/renta-oficinas/aguascalientes"
            },
            status: ["corporative"],
            type: [""]
        }, {
            name: "Punta México",
            address: "",
            image: "",
            alt: "",
            anchor: {
                corporative: "/venta-renta-oficinas/punta-mexico"
            },
            status: ["corporative"],
            type: [""]
        }],
        a = document.querySelector(".rent-content .rent-corporative .row"),
        t = document.querySelector(".rent-content .rent-residential .row"),
        n = document.querySelector(".rent-content .rent-mixed .row"),
        r = document.querySelector(".sell-content .sell-corporative .row"),
        s = document.querySelector(".sell-content .sell-residential .row"),
        o = document.querySelector(".sell-content .sell-mixed .row"),
        i = document.getElementById("sell-corporative"),
        c = document.getElementById("sell-residential"),
        l = document.getElementById("sell-mixed"),
        d = document.getElementById("rent-corporative"),
        u = document.getElementById("rent-residential"),
        p = document.getElementById("rent-mixed"),
        m = document.getElementsByName("sell-options"),
        g = document.getElementsByName("rent-options");

    function v(a, t) {
        e.forEach((e => {
            e.type.forEach((n => {
                const r = n.slice(0, 4);
                if (n === a && n.includes(r)) {
                    const a = document.createElement("div");
                    let n;
                    n = n = "corporative" === e.status[0] ? e.anchor.corporative : e.anchor.residential, a.setAttribute("data-aos", "zoom-in"), a.setAttribute("data-aos-duration", "1500"), a.classList = "col-12 col-md-6 col-lg-4 col-xl-3 project-item", a.innerHTML = `  <div class="row justify-content-center">\n                              <div class="col-12 col-sm-10 place">\n                                <h3 class="place-title">${e.name}</h3>\n                                <p class="place-address">\n                                  <i class="fas fa-map-marker-alt"></i>\n                                  <span>${e.address}</span>\n                                </p>\n                                <img src="${e.image}" alt="${e.alt}" class="place-img"/>\n                                <div class="text-center">\n                                  <a href="${n}" class="place-button">EXPLORAR</a>\n                                </div>\n                              </div>\n                            </div>\n                          `, t.appendChild(a)
                }
            }))
        }))
    }
    m.forEach((e => {
        !0 === e.checked && v(i.getAttribute("id"), r), e.addEventListener("change", (function () {
            let a;
            switch (e) {
                case i:
                    a = i.getAttribute("id"), v(a, r), s.innerHTML = "", o.innerHTML = "";
                    break;
                case c:
                    a = c.getAttribute("id"), v(a, s), r.innerHTML = "", o.innerHTML = "";
                    break;
                case l:
                    a = l.getAttribute("id"), v(a, o), r.innerHTML = "", s.innerHTML = ""
            }
        }))
    })), g.forEach((e => {
        !0 === e.checked && v(d.getAttribute("id"), a), e.addEventListener("change", (function () {
            let r;
            switch (e) {
                case d:
                    r = d.getAttribute("id"), v(r, a), t.innerHTML = "", n.innerHTML = "";
                    break;
                case u:
                    r = u.getAttribute("id"), v(r, t), a.innerHTML = "", n.innerHTML = "";
                    break;
                case p:
                    r = p.getAttribute("id"), v(r, n), a.innerHTML = "", t.innerHTML = ""
            }
        }))
    })), new Vivus("pattern1", {
        type: "scenario",
        duration: 200,
        animTimingFunction: Vivus.EASE
    }), new Vivus("pattern2", {
        type: "scenario",
        duration: 200,
        animTimingFunction: Vivus.EASE
    }), new Vivus("pattern3", {
        type: "scenario",
        duration: 200,
        animTimingFunction: Vivus.EASE
    }), new Vivus("pattern4", {
        type: "scenario",
        duration: 200,
        animTimingFunction: Vivus.EASE
    });
    const b = document.querySelectorAll(".banner-video"),
        f = new Swiper(".swiper-banner", {
            speed: 2e3,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev"
            },
            on: {
                slideChangeTransitionEnd: function () {
                    b[f.previousIndex].play()
                }
            }
        })
})();