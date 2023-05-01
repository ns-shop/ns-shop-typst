#import "cover.typ": cover
#let template(children) = {
    [
        #set page(
            "a4",
            margin: (
                top: 2cm,
                right: 2cm,
                bottom: 2cm,
                left: 3cm,
            )
        )

        #set text(
            size: 14pt,
            font: ("Times New Roman"),
            fallback: false,
            spacing: 3pt,
            baseline: 1.5pt,
            region: "VN",
        )

        #cover(none)

        #cover([
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
        #set align(left)
        #set par(justify: true, first-line-indent: 1cm)
        // ---

        #children
    ]
}