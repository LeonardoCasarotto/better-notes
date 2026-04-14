#import "w3c.typ": *

#let side_note(color: "green", title: "", corpo) = {
  
  let line-color = w3colors.at(lower(color), default: rgb("#008000"))

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