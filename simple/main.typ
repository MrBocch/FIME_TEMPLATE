#import "portada_template.typ": *

#let fecha = datetime(
  year:  2025,
  month: 7,
  day:   30,
)

#portada(
    "Clase",
    "Actividad",
    "Nombre",
    "Matricula",
    "Carrera",
    fecha,
    8cm
)


#show: template 

= Hello World

#lorem(100) #link("https://google.com")

#quote(attribution: "Reedit")[
  Es una lástima que no estés conmigo
  
  cuando miro el reloj y son las cuatro
  
  y acabo la planilla y pienso diez minutos
  
  y estiro las piernas como todas las tardes
  
  y hago así con los hombros para aflojar la espalda
]

Algo muy padre. @unix-comment

Something Else that is cool @other-comment

= Bibliographia 

#bibliography("citar.yaml")
