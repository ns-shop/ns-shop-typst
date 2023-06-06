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

#let tabl(..fields, cap: false) = {
    if type(cap) == "string" {
        block(height: -(2 * textSize))
        figure(
            caption: cap,
            supplement: "Bảng",
            table(),
        )
        block(height: -(2 * textSize))
    }
    table(inset: 10pt, align: left, ..fields)
}

#let cover(border: true) = {
    rect(width: 100%, height: 100%, stroke: if(border) {2.5pt} else {0pt}, [
        #set align(center)
        \
        BAN CƠ YẾU CHÍNH PHỦ \
        *HỌC VIỆN KỸ THUẬT MẬT MÃ*
        #line(start: (50% - (3.5cm / 2), 0%), length: 3.5cm)
        #image("./images/logo.png", width: 3.5cm) \
        ĐỒ ÁN TỐT NGHIỆP \ \
        #text( weight: "bold", size: 16pt, "XÂY DỰNG WEBSITE THƯƠNG MẠI ĐIỆN TỬ AN TOÀN") \ \ \
        #set align(left)
        #pad(
            left: 8cm,
            [
                #"\t\t\tNgành: An toàn thông tin" \
                #"Mã số: 7.48.02.02" \
            ]
        ) \

        #pad(left: 2cm, [
            _Sinh viên thực hiện_: \
            #pad(left: 1cm, [*Ngô Quang Sang*])
            #pad(left: 1cm, [Lớp: AT15H])
            _Người hướng dẫn_: \
            #pad(left: 1cm, [*ThS. Nguyễn Thị Kim Oanh*])
            #pad(left: 1cm, [Khoa Công Nghệ Thông Tin - Trường Cao đẳng \ Nông Nghiệp và Phát triển Nông Thôn Bắc Bộ])
        ])

        #set align((center + bottom))
        
        #pad(bottom: .25cm, "Thành phố Hồ Chí Minh, 2023")
    ])
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
            block(radius: 0.75em, fill: luma(246), stroke: 1pt, width: 100%, inset: 1em, it),
        )
        block(height: -(3 * textSize))
        par("")
    }

    // --- cover
    cover()
    cover(border: false)

    // --- set page number
    set page(numbering: "1")
    counter(page).update(1)

    body
}