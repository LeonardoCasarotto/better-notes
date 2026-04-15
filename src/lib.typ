#import "w3c.typ": *


#let side_note(colore: "green", title: "", corpo) = {
  

  let line-color = if type(colore) == str {
    w3colors.at(lower(colore), default: rgb("#008000"))
  } else {
    colore 
  }

  block(
    width: 100%,
    stroke: (left: 2.5pt + line-color),
    inset: (left: 1em, top: 0.2em, bottom: 0.2em),
    breakable: true,
  )[
    #if title != "" {
      strong(title)
      [ ]
    }
    #corpo
  ]
}

#let esempio(corpo) = side_note(colore: rgb("#6495ED"), title: "Esempio:", corpo)
#let esercizio(corpo) = side_note(colore: rgb("#5E35B1"), title: "Esercizio:", corpo)
#let note(corpo) = side_note(colore: rgb("#5E35B1"), title: "Esercizio:", corpo)