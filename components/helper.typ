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
    parbreak()
}

#let h2(children) = {
    align(left, heading(
        level: 2,
        numbering: (..nums) => {
            text(size: 14pt, weight: "bold", nums.pos().map(str).join(".")+".")
        },
        text(size: 14pt, weight: "bold", children)
    ))
    parbreak()
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
    parbreak()
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
    parbreak()
};

#let img(src, cap: "", width: 100%) = {
    src = "./../images/" + src
    [#figure(
        image( src, width: width),
        caption: cap,
        supplement: "Hình"
    )]
}

#let tabl(..fields, cap: "") = {
    [#figure(
        table(inset: 10pt, align: left, ..fields),
        caption: cap,
        supplement: "Bảng"
    )]
}

#let code(
    caption: none,             // content of caption bubble (string, none)
    bgcolor: rgb("#fff"),      // back ground color (color)
    strokecolor: 1pt + black, // frame color (color)
    hlcolor: auto,             // color to use for highlighted lines (auto, color)
    width: 100%,
    radius: 3pt,
    inset: 5pt,
    numbers: true,             // show line numbers (boolean)
    stepnumber: 1,             // only number lines divisible by stepnumber (integer)
    numberfirstline: false,    // if the firstline isn't divisible by stepnumber, force it to be numbered anyway (boolean)
    numberstyle: auto,         // style function to apply to line numbers (auto, style)
    firstnumber: 1,            // number of the first line (integer)
    highlight: none,           // line numbers to highlight (none, array of integer)
    content
) = {
    if type(hlcolor) == "auto" {
        hlcolor = bgcolor.darken(10%)
    }
    if type(highlight) == "none" {
        highlight = ()
    }
    block(
        width: width,
        fill: bgcolor,
        stroke: strokecolor,
        radius: radius,
        inset: inset,
        clip: false,
        {
            // Draw the caption bubble if a caption was set
            if caption != none {
                style(styles => {
                    let caption_block = block(width: auto,
                            inset: inset,
                            radius: radius,
                            fill: bgcolor,
                            stroke: strokecolor,
                            h(.5em) + caption + h(.5em))
                    place(
                        top + left,
                        dx: 0em,
                        dy: -(measure(caption_block, styles).height / 2 + inset),
                        caption_block 
                    )
                })
                // skip some vertical space to avoid the caption overlapping with
                // the beginning of the content
                v(.6em)
            }

            let (columns, align, make_row) = {
                if numbers {
                    // line numbering requested
                    if type(numberstyle) == "auto" {
                        numberstyle = text.with(slashed-zero: true, 
                                                size: .6em)
                    }
                    ( ( auto, 1fr ),
                      ( right + horizon, left ),
                      e => {
                        let (i, l) = e
                        let n = i + firstnumber
                        let n_str = if (calc.mod(n, stepnumber) == 0) or (numberfirstline and i == 0) { numberstyle(str(n)) } else { none }
                        (n_str + h(.5em), raw(lang: content.lang, l))
                      }
                    )
               } else {
                    ( ( 1fr, ),
                      ( left, ),
                      e => {
                        let (i, l) = e
                        raw( lang:content.lang, l)
                      }
                    )
                }
            }
            table(
                stroke:none,
                columns: columns,
                rows: (auto,),
                gutter: 0pt,
                inset: 2pt,
                align: (col, _) => align.at(col),
                fill: (c, row) => if (row / 2 + firstnumber) in highlight { hlcolor } else { none },
                ..content
                    .text
                    .split("\n")
                    .enumerate()
                    .map(make_row)
                    .flatten()
                    .map(c => if c.has("text") and c.text == "" { v(1em) } else { c })
            )
        }
    )
}