#import "@preview/showybox:2.0.4": showybox





#let osservazione(titolo, corpo) = {
  showybox(
    frame: (
      border-color: rgb("#2E7D32"),
      title-color: rgb("#2E7D32"),
      body-color: rgb("#E8F5E9"),
      radius: 2pt,
      thickness: 1pt,
    ),
    title: strong(titolo),
    // Il corpo deve essere passato come contenuto
    corpo
  )
}



#let line_block(colore, ..args) = {
  let pos = args.pos()
  let (titolo, corpo) = if pos.len() > 1 {
    (pos.at(0), pos.at(1))
  } else {
    ("", pos.at(0))
  }

  block(
    width: 100%,
    stroke: (left: 2.5pt + colore), // Usa il colore dinamico
    inset: (left: 1em, top: 0.2em, bottom: 0.2em),
    breakable: true,
  )[
    #if titolo != "" {
      strong(titolo)
      [ ]
    }
    #corpo
  ]
}

//Sections with related colors
#let esempio = line_block.with(rgb("#6495ED"))
#let esercizio = line_block.with(rgb("#5E35B1"))
