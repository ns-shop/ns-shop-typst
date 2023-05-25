#let textSize = 14pt
#let tabSize = 1cm
// #let p = [
//     #show par: set block(inset: 0pt, outset: 0pt, above: 0pt, below: 0pt)
//     #par(leading: 0pt, first-line-indent: 0pt, hanging-indent: 0pt,
//         text(size: 0pt, spacing: 0pt, baseline: 0pt, top-edge: 0pt, bottom-edge: 0pt, ""))
// ]
#let p = h(tabSize)

#let h1(children, numbering: true, pageBreak: true) = {
    if (pageBreak) [#pagebreak()]
    align(center, heading(
        level: 1,
        numbering: if (numbering) {(..nums) => {
            text(
                size: textSize, weight: "bold",
                "CHƯƠNG "+nums.pos().map(str).join(".")+"."
            )
        }} else {none},
        upper(text(size: textSize, weight: "bold", children)),
    ))
}

#let h2(children) = {
    heading(
        level: 2,
        numbering: (..nums) => {
            text(size: textSize, weight: "bold", nums.pos().map(str).join(".")+".")
        },
        text(size: textSize, weight: "bold", children)
    )
}

#let h3(children) = {
    heading(
        level: 3,
        numbering: (..nums) => {
            text(size: textSize, style: "italic", weight: "regular",
                  h(1cm)+nums.pos().map(str).join(".")+".")
        },
        text(size: textSize, style: "italic", weight: "regular", children)
    )
}

#let h4(children) = {
    heading(
        level: 4,
        numbering: (..nums) => {
            text(size: textSize, style: "italic", weight: "regular",
                  h(1cm)+nums.pos().map(str).join(".")+".")
        },
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

#let tabl(..fields, cap: "") = {
    figure(
        caption: cap,
        supplement: "Bảng",
        table(),
    )
    table(inset: 10pt, align: left, ..fields)
}

#let code(
    caption: none,             // content of caption bubble (string, none)
    bgcolor: rgb("#fff"),      // back ground color (color)
    strokecolor: 1pt + black,  // frame color (color)
    hlcolor: yellow,           // color to use for highlighted lines (auto, color)
    width: 100%,
    radius: 3pt,
    inset: 5pt,
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
        below: textSize,
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
                ((1fr,),
                    (left),
                    e => {
                    let (i, l) = e
                    raw( lang:content.lang, l)
                    }
                )
            }
            table(
                stroke:none,
                columns: columns,
                rows: (auto,),
                gutter: 0pt,
                inset: 2pt,
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

#let cover(border: black) = {
    let cont = [
        \
        #align(center, [
            BAN CƠ YẾU CHÍNH PHỦ \
            *HỌC VIỆN KỸ THUẬT MẬT MÃ*
            #line(start: (50% - (3.5cm / 2), 0%), length: 3.5cm)
            #image("images/logo.png", width: 3.5cm) \
            *ĐỒ ÁN TỐT NGHIỆP ĐẠI HỌC* \ \
        ])
        #underline("ĐỀ TÀI:")
        #align(center, text( weight: "bold", size: textSize * 1.25,
            "XÂY DỰNG WEBSITE THƯƠNG MẠI \n ĐIỆN TỬ AN TOÀN")) \ \ \ \
        #align(center, text(weight: "bold", table(columns: 2, stroke: none, align: left, inset: textSize / 2,
            "Giảng viên hướng dẫn:", "Th.S Vũ Thị Vân",
            "Sinh viên thực hiện:", "Ngô Quang Sang",
            "Lớp:", "AT15H",
            "Khóa:", "15",
            "Chuyên ngành:", "An toàn thông tin",)))
        #align((center + bottom), pad(bottom: .25cm, "Thành phố Hồ Chí Minh, 2023"))
    ]
    rect(width: 100%, height: 100%, stroke: 2pt + border, cont)
}

#let template(body) = {
    set page(
        "a4",
        margin: (
            top: 2cm,
            right: 2cm,
            bottom: 2cm,
            left: 3cm,
        )
    )
    set text(
        size: textSize,
        font: ("Times New Roman"),
        fallback: false,
        region: "VN",
    )
    set par(
        justify: true,
        first-line-indent: tabSize,
        leading: textSize, // 1.5 lines
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
    show heading: set block(inset: 0pt, outset: 0pt, above: 0pt, below: textSize)
    show par: set block(inset: 0pt, outset: 0pt, above: 0pt, below: textSize)
    show figure: set block(inset: 0pt, outset: 0pt, above: 0pt, below: textSize)
    show list: set block(inset: 0pt, outset: 0pt, above: 0pt, below: textSize)
    show enum: set block(inset: 0pt, outset: 0pt, above: 0pt, below: textSize)
    show table: set block(inset: 0pt, outset: 0pt, above: 0pt, below: textSize)

    // --- cover
    cover()
    cover(border: white)

    // --- set page number
    set page(numbering: "1")
    counter(page).update(1)

    body
}