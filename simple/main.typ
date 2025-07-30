// Simple PORTADA

// DATOS (si individual)
#let clase     = "Nombre de Materia"
#let actividad = "Nombre de Actividad"
#let nombre    = "Tu Nombre"
#let matricula = "Tu matricula"
#let carrera   = "Tu Carrera"
// Ajuste manualmente para que apareca debajo pagina
// janky
#let espacio   = 8cm
#let fecha = datetime(
    year:  2025,
    month: 7,
    day:   29,
)

// https://fonts.google.com/specimen/Lato
#set text(font: "Lato", 12pt)
// https://www.dafont.com/linux-biolinum.font
// #set text(font: "Linux Biolinum")

// Documento
#set page(
  paper: "a4",
  margin: 2cm,
  header: none,
  //numbering: "1",
  // number-align: right,

)

#set par(justify: true)

#show heading.where(level: 1): it => [
  #it
  #v(1em)
]

// PORTADA
#page()[

  // Logos de UANL + FIME
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0pt,
    align(left)[
      #image("img/uanl.png", width: 4cm)
    ],
    align(right)[
      #image("img/fime.png", width: 4cm)
    ]
  )


  #v(0.9cm)


  #align(center)[

    #text(size: 24pt, weight: "regular")[Universidad Autónoma de Nuevo León
] \
    #v(0.5cm)
    #text(size: 23pt, weight: "regular")[Facultad de Ingeniería Mecánica y Eléctrica ] \


    #v(2cm)


    #text(size: 18pt)[#text(weight: "regular")[#clase]] \
    #v(0.5cm)
    #text(size: 18pt)[#text(weight: "regular")[#actividad]] \
    // N de equipo?
    //#v(0.5cm)
    // #text(size: 18pt)[#text(weight: "regular")[Equipo N.]] \
    #v(2cm)
  ]

  #table(
  columns: (1fr, 1fr, 1fr),
  stroke: black,
  align: center,
  // Si es enquipo pon aqui datos de equipo
    [*Nombre*], [*Matricula*], [*Carrera*],
    [#nombre], [#matricula], [#carrera],
  )

  // manualmente cambiar espacio (deberia hacer esto con footer)
  #v(espacio)

  // footer
  #align(center)[
    Ciudad Universitaria, San Nicolás de los Garza, Nuevo León

    #fecha.display()
  ]
  #pagebreak()
]


#set text(font: "Linux Biolinum")
#set page(
  numbering: "1",
  number-align: right
)
#set quote(block: true)
#show quote: set pad(x: 2em)


= Que es Typst?

Typst es un lenguaje diseñado para replazar a LaTeX. Si no sabes que es LaTeX, solo debes de saber que Typst te va ayudar escribir documentos profesionales

= Referencia

Bloque de codigo

```Haskell
fib :: Number -> Number
fib 0 = 1
fib 1 = 1
fib n = fib (n-2) + fib (n-1)
```

#figure(
  image("img/fime.png", width: 50%),
  caption: [Si quieres una imagen],
  numbering: none
)

Utiliza `#pagebreak()` para siguir a proxima pagina.

#pagebreak()

Quieres citar algo?


- Libro/Quote

#quote(attribution: [The Code Book])[
  As the danger of discovery was great, there was only one way in which
  he could contrive to get the message through: this was by scraping the
  wax off a pair of wooden folding tablets, writing on the wood underneath
  what Xerxes intended to do, and then covering the message over with
  wax again. In this way the tablets, being apparently blank, would cause
  no trouble with the guards along the road. When the message reached its
  destination, no one was able to guess the secret, until, as I understand,
  Cleomenes’ daughter Gorgo, who was the wife of Leonidas, divined and
  told the others that if they scraped the wax off, they would find something
  written on the wood underneath. This was done; the message was
  revealed and read, and afterward passed on to the other Greeks.
]

- Citar formato APA

Unix funny commented code @unix-comment
```
/*
 * You are not expected to understand this.
 */
```


#bibliography("citar.yaml", style: "american-medical-association")


/*
// Document content starts here
= Introducción

Your content goes here...


= Desarrollo

Your content goes here...

= Conclusión

Your content goes here...

= Bibliografía
*/
