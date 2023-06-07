#let textSize = 14pt
#let tabSize = 1cm
#let prefixh1 = "CHƯƠNG"

#let h1(children, numbering: true, pageBreak: true) = {
    if (pageBreak) [#pagebreak()]
    set align(center)
    heading(
        level: 1,
        numbering: if (numbering) {(..nums) => text(
                size: textSize, weight: "bold",
                prefixh1+" "+nums.pos().map(str).join(".")+"."
            )} else {none},
        upper(text(size: textSize, weight: "bold", children)),
    )
}

#let h2(children) = {
    heading(
        level: 2,
        numbering: (..nums) => text(size: textSize, weight: "bold", nums.pos().map(str).join(".")+"."),
        text(size: textSize, weight: "bold", children)
    )
}

#let h3(children) = {
    heading(
        level: 3,
        numbering: (..nums) => text(size: textSize, style: "italic", weight: "regular",
                  h(1cm)+nums.pos().map(str).join(".")+"."),
        text(size: textSize, style: "italic", weight: "regular", children)
    )
}

#let h4(children) = {
    heading(
        level: 4,
        numbering: (..nums) => text(size: textSize, style: "italic", weight: "regular",
                  h(1cm)+nums.pos().map(str).join(".")+"."),
        text(size: textSize, style: "italic", weight: "regular", children)
    )
}

#let img(src, cap: "", width: 100%) = {
    src = "images/" + src
    figure(
        image(src, width: width),
        caption: cap,
        supplement: "Hình"
    )
}

#let tabl(..fields, cap: false) = {
    if type(cap) == "string" {
        block(height: -(2 * textSize))
        figure(caption: cap, supplement: "Bảng", table())
        block(height: -(2 * textSize))
    }
    table(inset: 10pt, align: left, ..fields)
}

#let template(body) = {
    set page("a4", margin: (top: 2cm, right: 2cm, bottom: 2cm, left: 3cm))
    set text( size: textSize, font: ("Times New Roman"), fallback: false, region: "VN")
    set block(inset: 0pt, outset: 0pt, above: 0pt, below: 1.5 * textSize)
    set par(
        justify: true,
        leading: textSize, // 1.5 lines
        first-line-indent: tabSize,
    )
    set list(
        indent: tabSize,
        body-indent: .75em,
        marker: ([•], [◦], [--]),
        tight: true,
    )
    set enum(
        indent: tabSize,
        body-indent: .75em,
        tight: true,
    )

    show heading: it => {
        set block(below: 1.5 * textSize)
        it
        block(height: -(3 * textSize))
        par("")
    }
    show list: it => {
        set par(hanging-indent: -(2 * tabSize - 0.75em))
        it
        block(height: -(3.5 * textSize))
        par("")
    }
    show enum: it => {
        set par(hanging-indent: -(2 * tabSize - 0.75em))
        it
        block(height: -(3.5 * textSize))
        par("")
    }
    show figure: it => {
        it
        block(height: -(2.5 * textSize))
        par("")
    }
    show table: it => {
        it
        block(height: -(3 * textSize))
        par("")
    }
    show raw.where(block: true): it => {
        set par(justify: false, leading: 8pt)
        set text(size: 8pt)
        grid(
            columns: (100%, 100%),
            column-gutter: -100%,
            block(radius: 0em, fill: luma(246), stroke: 1pt, width: 100%, inset: 1em, it),
        )
        block(height: -(3 * textSize))
        par("")
    }

    body
}