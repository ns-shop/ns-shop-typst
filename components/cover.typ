#let cover(children) = {
    rect(width: 100%, height: 100%, [
        #set align(center)
        \
        BAN CƠ YẾU CHÍNH PHỦ \
        *HỌC VIỆN KỸ THUẬT MẬT MÃ*
        #line(start: (50% - (3.5cm / 2), 0%), length: 3.5cm)
        #image("../images/logo.png", width: 3.5cm) \
        ĐỒ ÁN TỐT NGHIỆP \ \
        #text( weight: "bold", size: 16pt,
            "XÂY DỰNG WEBSITE THƯƠNG MẠI ĐIỆN TỬ AN TOÀN") \ \ \
        #set align(left)
        #pad(
            left: 8cm,
            [
                #"\t\t\tNgành: An toàn thông tin" \
                #"Mã số: 7.48.02.02" \
            ]
        ) \

        #children
        #set align((center + bottom))
        
        #pad(bottom: .25cm, "Thành phố Hồ Chí Minh, 2023")
    ])
}