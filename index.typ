#import "template.typ": template
#import "heading.typ": h1, h2, h3, h4

#template([
    #set page(numbering: "i")
    #counter(page).update(1)

    #h1("Lời cảm ơn", numbering: false, pageBreak: false)

    #h1("Lời cam đoan", numbering: false)

    #h1("Mục lục", numbering: false)
        #outline(
            title: pad(bottom: .25cm, none),
            depth: 3,
            // indent: true,
            // fill: line(length: 100%)
        )

    #h1("Danh mục các ký hiệu, chữ viết tắt", numbering: false)

    #h1("Danh mục bảng", numbering: false)

    #h1("Danh mục hình vẽ, đồ thị", numbering: false)

    #set page(numbering: "1")
    #counter(page).update(1)

    #h1("Mở đầu", numbering: false, pageBreak: false)
        Số lượng người dùng TMĐT tăng nhanh: Gần đây, sự phát triển công nghệ mở ra nhiều cơ hội kinh doanh mới, giúp thị trường TMĐT phát triển và thu hút nhiều người dùng hơn.

        Vấn đề an toàn và bảo mật trong TMĐT: Khi giao dịch trực tuyến, người dùng thường cung cấp thông tin cá nhân và tài khoản ngân hàng. Nếu không có biện pháp bảo mật, dữ liệu này có thể bị đánh cắp và lợi dụng để gây hại.

        Mục tiêu chính của đề tài này là tạo ra sản phẩm nhằm tăng cường an toàn và bảo mật trong TMĐT: Triển khai giải pháp xác thực an toàn bảo mật cho dữ liệu và thanh toán giúp tăng cường an toàn và bảo mật cho giao dịch TMĐT, giúp người dùng yên tâm hơn khi giao dịch trực tuyến.

        Nâng cao uy tín và chất lượng của website TMĐT: Khi website TMĐT triển khai các giải pháp bảo mật an toàn và đáp ứng các tiêu chuẩn an toàn quốc tế, đó là điểm cộng để nâng cao uy tín và chất lượng của website, thu hút người dùng tin tưởng và sử dụng.

        Đóng góp tích cực cho sự phát triển của TMĐT: TMĐT đang trở thành lĩnh vực kinh doanh tiềm năng, đóng góp tích cực cho sự phát triển của nền kinh tế và xã hội. Triển khai giải pháp bảo mật an toàn cho TMĐT giúp tạo điều kiện thuận lợi cho sự phát triển của lĩnh vực này, giúp doanh nghiệp TMĐT tăng cường sự tin tưởng của khách hàng và nâng cao hiệu quả kinh doanh.

        Đáp ứng các tiêu chuẩn và quy định của pháp luật: Hiện nay, các quy định vềbảo mật thông tin và thanh toán trực tuyến đang được nhiều quốc gia và khu vực áp dụng. Triển khai giải pháp bảo mật an toàn cho TMĐT giúp đáp ứng các tiêu chuẩn và quy định này, giúp website TMĐT tránh được các rủi ro về pháp lý.

        Vì vậy, đề tài này có tính cấp thiết và ý nghĩa thực tiễn cao, giúp tăng cường an toàn và bảo mật cho giao dịch TMĐT, đóng góp tích cực cho sự phát triển của lĩnh vực TMĐT và đáp ứng các tiêu chuẩn và quy định của pháp luật.

    #h1("Khảo sát và xác định yêu cầu sản phẩm")
        #h2("Khái niệm và tính năng của website thương mại điện tử (TMĐT)")
        #h2("Các yếu tố quan trọng trong thiết kế website TMĐT")
            #h3("Trải nghiệm người dùng (User Experience - UX)")
            #h3("Thiết kế Responsive")
            #h3("Tối ưu hóa tốc độ load trang")
        #h2("Giải pháp quản lý dữ liệu khách hàng và đơn hàng hiệu quả")
            #h3("Khái niệm và tính chất của dữ liệu khách hàng và đơn hàng")
            #h3("Các giải pháp quản lý dữ liệu hiệu quả")
                #h4("CRM - Customer Relationship Management")
                    CRM (Customer Relationship Management) là một phương pháp quản lý, tương tác và liên kết với khách hàng của doanh nghiệp. Trong website TMĐT, CRM được sử dụng để quản lý thông tin khách hàng, ghi nhận các hoạt động liên quan đến khách hàng và xây dựng quan hệ tốt hơn với khách hàng.

                    Trong website TMĐT, CRM có thể bao gồm các tính năng sau:
                        - Quản lý thông tin khách hàng: Hệ thống CRM cho phép lưu trữ và quản lý thông tin chi tiết về khách hàng, bao gồm tên, địa chỉ, số điện thoại, email, lịch sử mua hàng, câu hỏi và yêu cầu của khách hàng.
                        - Quản lý hoạt động liên quan đến khách hàng: Hệ thống CRM cho phép ghi nhận các hoạt động liên quan đến khách hàng như cuộc gọi điện thoại, email và tin nhắn, lịch hẹn, giải đáp thắc mắc của khách hàng,...
                        - Quản lý bán hàng: Hệ thống CRM cũng hỗ trợ quản lý quá trình bán hàng từ việc tìm kiếm khách hàng tiềm năng đến việc tạo đơn hàng và theo dõi thanh toán.
                        - Xây dựng quan hệ tốt hơn với khách hàng: Hệ thống CRM giúp xác định được nhu cầu và yêu cầu của khách hàng, từ đó đưa ra các chiến lược phù hợp để nâng cao chất lượng dịch vụ, tạo sự tin tưởng và tăng cường sự hài lòng của khách hàng.

                #h4("Quản lý đơn hàng")
                #h4("Quản lý kho hàng")
        #h2("Các lỗi bảo mật phổ biến trong website TMĐT và cách khắc phục")
            #h3("SQL Injection")
                Lỗi bảo mật SQL Injection là một trong những lỗi phổ biến nhất trong các website TMĐT. Đây là lỗi bảo mật cho phép kẻ tấn công thực hiện các cuộc tấn công vào cơ sở dữ liệu của trang web bằng cách chèn các câu lệnh SQL độc hại vào các trường đầu vào trên trang web.
    
                Khi khai thác lỗi SQL Injection, kẻ tấn công có thể truy xuất và thay đổi dữ liệu trong cơ sở dữ liệu của trang web, thực hiện các hoạt động xóa hoặc thêm mới dữ liệu, và thậm chí kiểm soát toàn bộ trang web.
                
                Để ngăn chặn lỗi bảo mật SQL Injection, trang web TMĐT cần áp dụng các biện pháp bảo mật sau:
                    - Sử dụng các phương pháp mã hóa và xác thực đầu vào đúng cách để gói gọn các nguy cơ tấn công SQL Injection.
                    - Tạo ra các quy tắc xác thực đầu vào cụ thể để ngăn chặn việc nhập liệu không hợp lệ từ người dùng.
                    - Áp dụng các biện pháp bảo vệ server như firewalls, antivirus và các biện pháp bảo vệ thông qua giải pháp phần mềm bảo mật.
                    - Sử dụng các công cụ kiểm tra lỗ hổng bảo mật để tìm ra các lỗ hổng bảo mật trong trang web TMĐT và khắc phục chúng kịp thời.
                    - Cập nhật và nâng cấp hệ thống thường xuyên, đặc biệt là các thành phần quan trọng như hệ điều hành, phần mềm máy chủ và các ứng dụng trên trang web TMĐT.
                
                Với những biện pháp bảo mật trên, trang web TMĐT sẽ giảm thiểu được rủi ro bị tấn công SQL Injection và đảm bảo an toàn cho khách hàng trong quá trình giao dịch mua bán sản phẩm trên trang web.

            #h3("Cross-Site Scripting (XSS)")
                Lỗi bảo mật Cross-Site Scripting (XSS) là một trong những lỗi phổ biến trong các website TMĐT. XSS xảy ra khi kẻ tấn công chèn mã độc, ví dụ như JavaScript, vào trang web và khiến nó được thực thi trên trình duyệt của người dùng.

                Khi khai thác lỗi XSS, kẻ tấn công có thể lấy được thông tin cá nhân của người dùng, thực hiện các hành động thay đổi nội dung trang web, hoặc thậm chí điều khiển trang web để thực hiện các hoạt động phi pháp.
                
                Để ngăn chặn lỗi bảo mật XSS, trang web TMĐT cần áp dụng các biện pháp bảo mật sau:
                    - Sử dụng các phương pháp mã hóa và xác thực đầu vào đúng cách để gói gọn các nguy cơ tấn công XSS.
                    - Tạo ra các quy tắc xác thực đầu vào cụ thể để ngăn chặn việc nhập liệu không hợp lệ từ người dùng.
                    - Áp dụng các biện pháp bảo vệ server như firewalls, antivirus và các biện pháp bảo vệ thông qua giải pháp phần mềm bảo mật.
                    - Sử dụng các công cụ kiểm tra lỗ hổng bảo mật để tìm ra các lỗ hổng bảo mật trong trang web TMĐT và khắc phục chúng kịp thời.
                    - Cập nhật và nâng cấp hệ thống thường xuyên, đặc biệt là các thành phần quan trọng như hệ điều hành, phần mềm máy chủ và các ứng dụng trên trang web TMĐT.
                    - Sử dụng HTTPOnly cookies để ngăn chặn việc truy cập cookie trong trình duyệt của người dùng.

            #h3("Cross-Site Request Forgery (CSRF)")
            #h3("Injection Flaw")
            #h3("Broken Authentication and Session Management")
        #h2("Giải pháp xác thực an toàn bảo mật cho dữ liệu và thanh toán")
            #h3("SSL - Secure Socket Layer")
            #h3("Tokenization")
            #h3("3D Secure")
            #h3("PCI DSS Compliance")
            #h3("OAuth")
            #h3("Secure Payment Protocols")
        #h2("Kết chương")
    #h1("Phân tích và thiết kế website TMĐT")
        #h2("Mô tả bài toán")
            Quá trình phân tích và thiết kế website TMĐT bao gồm các bước sau:
              - Phân tích yêu cầu: Đây là bước đầu tiên trong quá trình phát triển trang web TMĐT. Trong bước này, nhóm phân tích cần xác định yêu cầu của khách hàng về tính năng và giao diện của trang web TMĐT. Các yêu cầu này sẽ được sử dụng để tạo ra một kế hoạch phát triển chi tiết cho trang web TMĐT.
              - Thiết kế giao diện: Sau khi xác định yêu cầu của khách hàng, nhóm thiết kế sẽ bắt đầu thiết kế giao diện cho trang web TMĐT. Thiết kế này sẽ bao gồm việc xác định cấu trúc của trang web, bố trí các thành phần trên trang web và thiết kế các mẫu giao diện cho các trang khác nhau.
              - Phát triển mã nguồn: Khi đã có thiết kế giao diện, nhóm phát triển sẽ bắt đầu phát triển mã nguồn để tạo ra các tính năng cần thiết cho trang web TMĐT.
              - Kiểm thử: Sau khi hoàn tất phát triển, trang web TMĐT sẽ được kiểm thử để đảm bảo rằng các tính năng hoạt động chính xác và không có lỗi.
              - Triển khai: Khi đã kiểm tra và hoàn tất, trang web TMĐT sẽ được triển khai trên môi trường sản xuất để khách hàng có thể truy cập và sử dụng.
              - Bảo trì và cập nhật: Sau khi triển khai, trang web TMĐT sẽ được bảo trì và cập nhật để đảm bảo rằng các tính năng của trang web luôn hoạt động chính xác và cập nhật với các yêu cầu mới của khách hàng.
        
        #h2("Phân tích nghiệp vụ và yêu cầu chức năng")
            #h3("Chức năng đăng nhập và đăng ký tài khoản")
                Chức năng đăng ký tài khoản cho phép khách hàng có thể tạo một tài khoản mới trên trang web TMĐT. Người dùng cần cung cấp thông tin cá nhân như tên đăng nhập, mật khẩu, địa chỉ email và thông tin liên lạc. Thông tin này sẽ được lưu trữ trong hệ thống của trang web để khách hàng có thể đăng nhập lại vào lần sau.

                Chức năng đăng nhập cung cấp cho khách hàng quyền truy cập vào các tính năng và dịch vụ của trang web TMĐT. Người dùng sẽ cần nhập tên đăng nhập và mật khẩu của mình để đăng nhập thành công. Sau khi đăng nhập thành công, khách hàng có thể thực hiện các hoạt động như xem lịch sử giao dịch, sửa đổi thông tin cá nhân, quản lý giỏ hàng và thanh toán đơn hàng.
                
                Ngoài ra, việc có chức năng đăng nhập và đăng ký tài khoản còn giúp cho trang web TMĐT có thể thu thập thông tin về khách hàng để có thể cung cấp các dịch vụ tốt hơn và phù hợp với nhu cầu của từng khách hàng.
                
            #h3("Chức năng tìm kiếm sản phẩm")
                Chức năng tìm kiếm sản phẩm cho phép người dùng nhập từ khóa tìm kiếm vào ô tìm kiếm và sau đó hiển thị các sản phẩm liên quan đến từ khóa tìm kiếm đó. Nếu có quá nhiều sản phẩm được tìm thấy, trang web TMĐT có thể sắp xếp chúng theo các tiêu chí khác nhau như giá cả, độ phổ biến, đánh giá của khách hàng hoặc thương hiệu sản phẩm.

                Ngoài ra, trang web TMĐT cũng có thể cung cấp các công cụ lọc sản phẩm để giúp khách hàng thu hẹp phạm vi tìm kiếm của mình và tìm kiếm các sản phẩm phù hợp với nhu cầu của mình hơn. Các tiêu chí lọc sản phẩm phổ biến bao gồm màu sắc, kích thước, giá cả và thương hiệu.
                
                Chức năng tìm kiếm sản phẩm cùng với các công cụ lọc sản phẩm giúp khách hàng dễ dàng tìm kiếm các sản phẩm mà họ đang quan tâm và giúp trang web TMĐT cung cấp cho khách hàng những trải nghiệm mua sắm thân thiện và tiện lợi.

            #h3("Chức năng giỏ hàng và thanh toán")
                Chức năng giỏ hàng cho phép người dùng lưu trữ các sản phẩm mà họ muốn mua vào trong giỏ hàng. Người dùng có thể thêm hoặc xóa bất kỳ sản phẩm nào từ giỏ hàng của mình và có thể xem toàn bộ giỏ hàng của mình trước khi hoàn tất đơn hàng.
    
                Sau khi đã chọn các sản phẩm mua, khách hàng cần thực hiện thanh toán để hoàn tất đơn hàng. Chức năng thanh toán cung cấp cho khách hàng các phương thức thanh toán khác nhau để lựa chọn, bao gồm thanh toán qua thẻ tín dụng/debit, thanh toán COD (thanh toán khi nhận hàng) hoặc chuyển khoản ngân hàng.
                
                Ngoài ra, trang web TMĐT cũng cần đảm bảo rằng các thông tin thanh toán của khách hàng được bảo mật và an toàn. Vì vậy, trang web TMĐT cần sử dụng các công nghệ bảo mật như SSL (Secure Sockets Layer) để mã hóa thông tin thanh toán và tránh các vấn đề bảo mật như lừa đảo hoặc giả mạo thông tin.
                
                Với chức năng giỏ hàng và thanh toán, trang web TMĐT cung cấp cho khách hàng một trải nghiệm mua sắm thuận tiện và an toàn, giúp tăng tính khả thi của quy trình hoàn tất mua hàng và tạo ra sự hài lòng cho người dùng.

            #h3("Chức năng quản lý thông tin tài khoản và đơn hàng")
                Chức năng quản lý thông tin tài khoản cho phép khách hàng cập nhật và sửa đổi thông tin cá nhân của mình, bao gồm tên, địa chỉ, số điện thoại và địa chỉ email. Khách hàng cũng có thể thay đổi thông tin đăng nhập của mình như tên đăng nhập và mật khẩu để bảo mật tài khoản của mình.
                
                Chức năng quản lý đơn hàng cho phép khách hàng xem lại các đơn hàng đã đặt trước đó và theo dõi trạng thái của từng đơn hàng. Khách hàng có thể xem chi tiết về sản phẩm đã đặt, nhà cung cấp, số lượng, giá cả và thông tin vận chuyển. Ngoài ra, khách hàng cũng có thể hủy bỏ đơn hàng hoặc yêu cầu trả lại sản phẩm trong trường hợp sản phẩm không đáp ứng được yêu cầu của khách hàng.
                
                Các chức năng quản lý thông tin tài khoản và đơn hàng giúp người dùng có thể quản lý thông tin của mình một cách dễ dàng và tiện lợi. Đồng thời, chức năng này cũng giúp trang web TMĐT có thêm cơ hội tương tác với khách hàng và cung cấp cho họ các dịch vụ chăm sóc khách hàng tốt nhất.

        #h2("Thiết kế giao diện và trải nghiệm người dùng")
            #h3("Thiết kế giao diện")
            #h3("Trải nghiệm người dùng")
        #h2("Thiết kế cơ sở dữ liệu")
            #h3("Lựa chọn hệ quản trị cơ sở dữ liệu")
            #h3("Thiết kế mô hình dữ liệu")
            #h3("Thiết kế quan hệ giữa các bảng dữ liệu")
            #h3("Thiết kế các truy vấn và thủ tục lưu trữ")
            #h3("Phân tích và tối ưu hóa hiệu suất cơ sở dữ liệu")
            #h3("Đảm bảo tính nhất quán và an toàn cho cơ sở dữ liệu")
        #h2("Phân tích thiết kế kiến trúc hệ thống")
            #h3("Xác định các thành phần của hệ thống")
            #h3("Thiết kế và xây dựng kiến trúc hệ thống")
            #h3("Đánh giá hiệu năng và khả năng mở rộng của hệ thống")
            #h3("Áp dụng các tiêu chuẩn trong thiết kế kiến trúc hệ thống")
        #h2("Đảm bảo an toàn và bảo mật cho website")
            #h3("Sử dụng HTTPS để bảo mật kết nối")
            #h3("Xác thực người dùng và quản lý phiên làm việc")
            #h3("Kiểm tra dữ liệu đầu vào và đầu ra")
            #h3("Áp dụng các giải pháp bảo mật như CAPTCHA, ReCaptcha")
            #h3("Theo dõi và giám sát hệ thống thường xuyên")
        #h2("Quản lý và bảo vệ thông tin khách hàng trên website TMĐT")
            #h3("Quản lý thông tin cá nhân và dữ liệu khách hàng")
            #h3("Bảo vệ thông tin giao dịch trên website TMĐT")
            #h3("Các qui định pháp lý liên quan")
        #h2("Kết chương")
    #h1("XÂY DỰNG SẢN PHẨM")
        #h2("Môi trường phát triển và công nghệ sử dụng")
            - OS: Linux
            - Web hosting control panel: cPanel
            - Webserver: Apache
            - Version control system: Git, Github
            - Front-end: Nuxt, Next, TailwindCSS
            - Back-end: Node
            - Database: MySQL
            - IDE: Visual Studio Code
            - Khác: Firebase
            
        #h2("Các bước triển khai")
            #h3("Chuẩn bị môi trường phát triển")
                Việc chuẩn bị môi trường phát triển là rất quan trọng trong quá trình phát triển của một dự án web. Có nhiều yếu tố ảnh hưởng đến việc lựa chọn công nghệ: chi phí, chất lượng nhân lực, tính mở rộng, sự phổ biến và hỗ trợ từ cộng đồng của công nghệ đó,... Việc lựa chọn công nghệ phù hợp với dự án giúp cho việc phát triển dự án nhanh chóng, hiệu quả và ít rủi ro hơn.

                Sau nhiều lần tìm hiểu và cân nhắc, em quyết định sử dụng Node, Nuxt, Next đều là các công nghệ phổ biến trong cộng đồng và được cập nhật thường xuyên và đều sử dụng chung ngôn ngữ Javascript/Typescript giúp cho việc bảo trì và tái sử dụng trở nên dễ dàng.

                Vể IDE thì lựa chọn phổ biến nhất cho lập trình viên web đó là VS Code do đây là IDE được sử dụng phổ biến và được hỗ trợ rất tốt từ cộng đồng với khả năng tùy biến cao và nhiều plugin kèm theo. Ngoài ra còn do cá nhân em đã có nhiều kinh nghiệm sử dụng VS Code. Đây là lựa chọn thuộc về chất lượng nhân lực.
                
                Về phần hạ tầng em chủ trương sử dụng web hosting để tiết kiệm chi phí, do đó đi kèm theo là sử dụng hệ điều hành Linux, cPanel control panel, MySQL database và Apache web server do đây là 4 service kèm theo phổ biến của shared web hosting giá rẻ. Ngoài ra em còn sử dụng Firebase để triển khai phần client front-end cho dự án.
                
            #h3("Thiết kế giao diện và trải nghiệm người dùng")
                Em sử dụng hệ thống thiết kế cơ bản của Tailwind làm hệ thống thiết kế chính cho dự án. Tailwind là một thư viện design component phổ biến trong cộng đồng do đó có đa dạng thiết kế và ý tưởng được hỗ trợ từ cộng đồng.

                Em cũng dành nhiều thời gian tham gia trải nghiệm các sản phẩm tương tự khác, trong số đó có nhiều sản phẩm phổ biến để đánh giá ưu nhược điểm của trải nghiệm người dùng từ đó cải thiện trải nghiệm cho sản phẩm này.
            
            #h3("Lập trình các chức năng và tính năng")
            #h3("Đảm bảo an toàn và bảo mật cho website")
            #h3("Triển khai website TMĐT")
        #h2("Kiểm thử và nâng cao chất lượng sản phẩm")
            #h3("Kiểm thử chức năng")
            #h3("Kiểm thử hiệu suất và tải trang")
            #h3("Kiểm thử bảo mật")
            #h3("Nâng cao chất lượng sản phẩm")
        #h2("Quản lý và vận hành website")
            #h3("Quản lý nội dung website")
            #h3("Quản lý danh mục sản phẩm và kho hàng")
            #h3("Quản lý đơn hàng và thanh toán")
            #h3("Quản lý khách hàng và dịch vụ hỗ trợ")
        #h2("Kết chương")

    // --- unset heading
    #set heading(numbering: none)
    // ---

    #h1("Tài liệu tham khảo")

    #h1("Phụ lục")
        #h2("Ưu nhược điểm của các website TMĐT")
            Ưu điểm của các website thương mại điện tử hiện nay:
                - Tiết kiệm chi phí: Các website thương mại điện tử không cần thiết kế, xây dựng và duy trì các cửa hàng vật lý, do đó giảm chi phí đầu tư ban đầu và chi phí hoạt động.
                - Mở rộng thị trường: Các website thương mại điện tử có khả năng tiếp cận hàng triệu khách hàng trên toàn thế giới, giúp doanh nghiệp mở rộng thị trường và tăng doanh số bán hàng.
                - Tăng tính tiện lợi: Khách hàng có thể mua sắm mọi lúc mọi nơi chỉ cần có kết nối internet, đặc biệt là trong bối cảnh dịch bệnh Covid-19 khi việc ra ngoài bị giới hạn.
                - Dễ dàng tùy chỉnh và cập nhật: Các website thương mại điện tử cho phép doanh nghiệp dễ dàng tùy chỉnh sản phẩm, giá cả, thông tin khuyến mãi, v.v. và cập nhật liên tục để phù hợp với thị trường và nhu cầu khách hàng.
                - Phân tích dữ liệu: Thông qua các công cụ phân tích dữ liệu, các website thương mại điện tử có thể thu thập và phân tích thông tin về hành vi mua sắm của khách hàng, từ đó đưa ra các chiến lược tiếp cận khách hàng hiệu quả.
                
            Tuy nhiên, các website thương mại điện tử cũng có những nhược điểm sau:
                - Khả năng bảo mật: Khi giao dịch trực tuyến, khách hàng sẽ chia sẻ thông tin cá nhân và tài khoản ngân hàng, do đó, các website thương mại điện tử phải đảm bảo khả năng bảo mật thông tin.
                - Độ tin cậy: Một số khách hàng có thể không tin tưởng vào việc mua hàng trực tuyến, đặc biệt là đối với những doanh nghiệp mới hoặc chưa được đánh giá cao.
                - Hạn chế trải nghiệm mua sắm: Khách hàng không thể cầm sản phẩm trực tiếp và kiểm tra chất lượng sản phẩm trước khi mua.
                - Vấn đề giao hàng: Việc giao hàng có thể gặp nhiều khó khăn và thời gian giao hàng cũng không được nhanh chóng đối với các sản phẩm có kích thước lớn hoặc cồng kềnh.
                - Cạnh tranh khốc liệt: Với số lượng website thương mại điện tử ngày càng tăng, đối thủ cạnh tranh trở nên khốc liệt hơn bao giờ hết, do đó, các doanh nghiệp phải đầu tư nhiều hơn để tiếp cận khách hàng và thu hút sự chú ý của họ.
])