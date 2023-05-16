#let h1(children, numbering: true, pageBreak: true) = {
    if (pageBreak) [#pagebreak()]
    align(center, heading(
        level: 1,
        numbering: if (numbering) {(..nums) => {
            text(
                size: 14pt, weight: "bold",
                "CHƯƠNG "+nums.pos().map(str).join(".")+"."
            )
        }} else {none},
        upper(text(size: 14pt, weight: "bold", children)),
    ))
    par("")
}

#let h2(children) = {
    align(left, heading(
        level: 2,
        numbering: (..nums) => {
            text(size: 14pt, weight: "bold", nums.pos().map(str).join(".")+".")
        },
        text(size: 14pt, weight: "bold", children)
    ))
    par("")
}

#let h3(children) = {
    align(left, heading(
        level: 3,
        numbering: (..nums) => {
            text(size: 14pt, style: "italic", weight: "regular",
                  "         "+nums.pos().map(str).join(".")+".")
        },
        text(size: 14pt, style: "italic", weight: "regular", children)
    ))
    par("")
}

#let h4(children) = {
    align(left, heading(
        level: 4,
        numbering: (..nums) => {
            text(size: 14pt, style: "italic", weight: "regular",
                  "         "+nums.pos().map(str).join(".")+".")
        },
        text(size: 14pt, style: "italic", weight: "regular", children)
    ))
    par("")
};

#let img(src, cap: "", width: 100%) = {
    [#figure(
        image(src, width: width),
        caption: cap,
        supplement: "Hình"
    )]
}