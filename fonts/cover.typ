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