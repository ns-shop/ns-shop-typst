#import "cover.typ": cover
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
        size: 14pt,
        font: ("Times New Roman"),
        fallback: false,
        spacing: 3pt,
        baseline: 1.5pt,
        region: "VN",
    )
    set list(
        indent: 1cm,
        body-indent: .75em,
        marker: ([•], [◦], [--]),
        tight: true,
    )

    // --- cover
    cover(none)
    cover([
        #pad(left: 2cm, [
            _Sinh viên thực hiện_: \
            #pad(left: 1cm, [*Ngô Quang Sang*])
            #pad(left: 1cm, [Lớp: AT15H])
            _Người hướng dẫn_: \
            #pad(left: 1cm, [*ThS. Vũ Thị Vân*])
            #pad(left: 1cm, [Khoa An toàn thông tin - Học viện Kỹ thuật mật mã])
        ])
    ])

    // --- set paragraph
    set align(left)
    set par(
        justify: true,
        // first-line-indent: 1cm,
    )
    show par: set block(above: 1.5em)
    show list: set block(above: 1.5em)
    show par: par => [
        [aasdasdsadasdadadad]
        #par
    ]

    // --- set page number
    set page(numbering: "1")
    counter(page).update(1)

    body
}