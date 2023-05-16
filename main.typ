#import "template.typ": template
#import "helper.typ": h1, h2, h3, h4, img

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

    Mục tiêu chính của đề tài này là tạo ra sản phẩm nhằm tăng cường an toàn và bảo mật trong TMĐT: Triển khai giải pháp xá  c thực an toàn bảo mật cho dữ liệu và thanh toán giúp tăng cường an toàn và bảo mật cho giao dịch TMĐT, giúp người dùng yên tâm hơn khi giao dịch trực tuyến.

    Nâng cao uy tín và chất lượng của website TMĐT: Khi website TMĐT triển khai các giải pháp bảo mật an toàn và đáp ứng các tiêu chuẩn an toàn quốc tế, đó là điểm cộng để nâng cao uy tín và chất lượng của website, thu hút người dùng tin tưởng và sử dụng.

    Đóng góp tích cực cho sự phát triển của TMĐT: TMĐT đang trở thành lĩnh vực kinh doanh tiềm năng, đóng góp tích cực cho sự phát triển của nền kinh tế và xã hội. Triển khai giải pháp bảo mật an toàn cho TMĐT giúp tạo điều kiện thuận lợi cho sự phát triển của lĩnh vực này, giúp doanh nghiệp TMĐT tăng cường sự tin tưởng của khách hàng và nâng cao hiệu quả kinh doanh.

    Đáp ứng các tiêu chuẩn và quy định của pháp luật: Hiện nay, các quy định vềbảo mật thông tin và thanh toán trực tuyến đang được nhiều quốc gia và khu vực áp dụng. Triển khai giải pháp bảo mật an toàn cho TMĐT giúp đáp ứng các tiêu chuẩn và quy định này, giúp website TMĐT tránh được các rủi ro về pháp lý.

    Vì vậy, đề tài này có tính cấp thiết và ý nghĩa thực tiễn cao, giúp tăng cường an toàn và bảo mật cho giao dịch TMĐT, đóng góp tích cực cho sự phát triển của lĩnh vực TMĐT và đáp ứng các tiêu chuẩn và quy định của pháp luật.
    #h1("Khảo sát và xác định yêu cầu sản phẩm")
    #h2("Khái niệm và tính năng của website thương mại điện tử (TMĐT)")
    #h3("Khái niệm")
    #h4("Khái niệm thương mại điện tử")
    Thương mại điện tử (E-Commerce) là hình thức kinh doanh trực tuyến sử dụng nền tảng công nghệ thông tin với sự hỗ trợ của Internet để thực hiện các giao dịch mua bán, trao đổi, thanh toán trực tuyến.
    
    Ngày nay ngươì ta còn hiểu khái niệm Thương mại điện tử thông thường là tất cả các phương pháp tiến hánh kinh doanh và các quy trình quản trị thông qua các kêng điện tử mà trong đó internet đóng vai trò cơ bản và trong công nghệ thông tin được gọi là điều kiện tiên quyết. Một khía cạnh quan trọng khác là không còn phảo thay đổi phương tiện truyền thông, một đặc trưng cho việc tiến hành kinh doanh truyền thống. Thêm vào đó laf thắng đến gia công , để làm điều này đòi hỏi phải tích hợp rộng lớn các tính năng kinh doanh.
    #h4("Lợi ích của một trang thương mại điện tử")
    Website thương mại điện tử (TMĐT) mang lại nhiều lợi ích cho các doanh nghiệp và khách hàng, bao gồm:
    - Mở rộng phạm vi tiếp cận khách hàng: TMĐT giúp các doanh nghiệp tiếp cận được với khách hàng từ khắp nơi trên thế giới, không chỉ ở địa phương hay khu vực.
    - Tiết kiệm chi phí: So với việc mở cửa hàng truyền thống, TMĐT giảm thiểu chi phí thuê mặt bằng, tài liệu quảng cáo, nhân viên bán hàng...
    - Tăng doanh số bán hàng: TMĐT giúp các doanh nghiệp tăng doanh số bán hàng bằng cách thu hút khách hàng mới, tăng số lượng đơn hàng, tăng giá trị các đơn hàng và tối ưu hóa quy trình bán hàng.
    - Tăng tính minh bạch trong quản lý kinh doanh: TMĐT cung cấp thông tin về sản phẩm, giá cả, khách hàng, doanh số... giúp các doanh nghiệp quản lý kinh doanh dễ dàng hơn và tăng tính minh bạch trong hoạt động kinh doanh.
    - Đáp ứng nhu cầu của khách hàng: Khách hàng có thể dễ dàng tìm kiếm sản phẩm, so sánh giá cả, đặt hàng và thanh toán trực tuyến mà không phải tốn thời gian và chi phí di chuyển.
    - Tăng tính tiện lợi cho khách hàng: TMĐT cung cấp các tính năng hỗ trợ khách hàng như chat trực tuyến, điện thoại, email... giúp khách hàng dễ dàng liên hệ với doanh nghiệp khi cần thiết.
    - Tiết kiệm thời gian: Khách hàng có thể tìm kiếm sản phẩm và đặt hàng trong vài phút, không cần phải di chuyển đến cửa hàng truyền thống.
    - Hỗ trợ quản lý đơn hàng dễ dàng: TMĐT giúp các doanh nghiệp quản lý danh sách đơn hàng và tiến độ giao hàng một cách thuận tiện, giúp tối ưu hóa quy trình bán hàng.
    #h4("Khái niệm Website thương mại điện tử")
    Website thương mại điện tử (TMĐT) là một nền tảng trực tuyến cho phép các doanh nghiệp bán hàng hoặc dịch vụ của mình cho khách hàng thông qua internet. TMĐT cung cấp một kênh bán hàng trực tuyến, mở rộng phạm vi tiếp cận của doanh nghiệp đến toàn bộ thị trường và giúp tăng thu nhập.
    #h3("Tính năng cơ bản của một trang thương mại điện tử")
    Các tính năng của TMĐT gồm:
    - Giỏ hàng: Cho phép khách hàng chọn mặt hàng mua và thanh toán trực tuyến.  
    - Quản lý sản phẩm và danh mục: Các doanh nghiệp có thể quản lý và sắp xếp sản phẩm theo danh mục riêng biệt, giúp khách hàng tìm kiếm sản phẩm dễ dàng hơn.
    - Thông tin sản phẩm chi tiết: Cung cấp thông tin về sản phẩm như giá cả, mô tả, hình ảnh, kích thước, số lượng còn lại...
    - Tính năng tìm kiếm: Cho phép khách hàng tìm kiếm sản phẩm theo từ khoá hoặc theo danh mục sản phẩm trên website.
    - Tính năng đánh giá và nhận xét: Khách hàng có thể đánh giá và viết nhận xét về sản phẩm sau khi mua hàng.
    - Hỗ trợ khách hàng: Cung cấp dịch vụ hỗ trợ khách hàng thông qua chat trực tuyến, email hoặc điện thoại, giúp giải đáp thắc mắc của khách hàng.
    - Thanh toán trực tuyến: Cung cấp các phương thức thanh toán an toàn và tiện lợi cho khách hàng.
    - Quản lý đơn hàng: Cho phép doanh nghiệp quản lý các đơn hàng từ khách hàng, gửi hàng và theo dõi tình trạng giao hàng.
    - Tính năng thống kê: Cung cấp báo cáo thống kê về doanh số bán hàng, số lượng sản phẩm đã bán, số lượng khách hàng đã mua... giúp doanh nghiệp đánh giá hiệu quả kinh doanh.
    #h2("Các yếu tố quan trọng trong thiết kế website TMĐT")
    #h3("Trải nghiệm người dùng (User Experience - UX)")
    Website bán hàng của bất kỳ doanh nghiệp nào cũng được xem là phương tiện quan trọng để kết nối được với nhiều khách hàng. Vì vậy, chú trọng vào trải nghiệm người dùng ( UX) là điều nên làm để giúp khách hàng có được trải nghiệm tốt nhất tại website của bạn. Vậy cách tối ưu trải nghiệm người dùng website thế nào cho hiệu quả, cùng đọc bài viết dưới đây nhé.
            
    Trải nghiệm người dùng (UX) là trải nghiệm của người dùng khi tương tác với một sản phẩm hoặc dịch vụ. Nó bao gồm các khía cạnh như thẩm mỹ, tính tiện dụng, tính khả dụng, hiệu suất và thỏa mãn sử dụng.
              
    Mục đích chính của UX là cải thiện tương tác giữa người dùng và sản phẩm hoặc dịch vụ, từ đó tạo ra trải nghiệm tốt hơn cho người dùng và đẩy mạnh doanh số bán hàng. Để đạt được điều này, các chuyên gia UX thường phân tích và tối ưu hóa các yếu tố như thiết kế giao diện người dùng, quy trình tương tác và trải nghiệm người dùng tổng thể để đảm bảo rằng sản phẩm hoặc dịch vụ đáp ứng được nhu cầu và mong muốn của người dùng.
              
    Các yếu tố quan trọng khi thiết kế trải nghiệm người dùng: 
    - Tâm lý người dùng (Psychology) là một trong những yếu tố quan trọng nhất nhưng cũng phức tạp nhất mà bạn cần có cái nhìn chi tiết để hiểu rõ nó. Khi thiết kế trải nghiệm người dùng, bạn cần phải gạt bỏ những định kiến và ý kiến của bản thân.
    - Tính khả dụng (Usability)
    
    Tâm lý người thuộc về tiềm thức còn tính khả dụng mang tính chủ quan và nghiêng về ý thức nhiều hơn.Người dùng sẽ có thể thực hiện được các thao tác một cách dễ dàng và nhanh chóng hơn khi tính khả dụng được tối ưu.
    - Thiết kế (Design) 
    Thiết kế trải nghiệm người dùng không giống với thiết kế trong suy nghĩ của các designer. Với UX, thiết kế này không liên quan quá nhiều đến “phong cách", thay vào đó là thiết kế nguyên lý hoạt động nhiều hơn.
    - Sáng tạo nội dung (Copywriting) 
    Khác với nội dung của UX, sáng tạo nội dung Copywriting cho thương hiệu cần phải có sự mạch lạc, rõ ràng, trực quan và đơn giản những nội dung của thương hiệu với mục đích phục vụ cho những giá trị lợi ích và hình ảnh của công ty.
    - Phân tích số liệu (Analytics) 
    Phân tích số liệu Analytics tuy là điểm yếu của hầu hết tất cả các designer song điều này có thể khắc phục và cải thiện được. Đây chính là điều kiện chính để giúp phân biệt được thiết kế UX với những thiết kế khác tạo nên điểm mạnh của UX.
    #h3("Thiết kế Responsive")
    #h4("Responsive là gì?")
    Responsive là một thuật ngữ hay tính từ chỉ một website có thể hiển thị và tương thích với mọi trình duyệt (co dãn theo kích thước trình duyệt). Ví dụ thông thường một website có độ hiển thị chuẩn trên màn hình máy tính ở Việt Nam là 960px, nhưng chắc chắn nó sẽ hiển thị trên màn hình điện thoại theo chiều rộng là 320px – 420px, đấy là so với những chiếc điện thoại màn hình nhỏ, còn với những chiếc điện thoại lớn hơn thì sẽ hiển thị khác.
    
    Cách thức hoạt động của Responsive là chúng ta sẽ viết code CSS để cho trình duyệt hiểu và thực thi nó trên các kích thước trình duyệt nhất định. Chẳng hạn các bạn có thể code và thiết lập một đoạn CSS nào đó chỉ áp dụng cho các trình duyệt có kích thước chiều rộng tối đa ở Iphone 4 là 640px. Responsive sử dụng kỹ thuật thiết kế được xử lý từ client-side chứ không thông qua truy vấn đến máy chủ để xử lý (server – side) nên nó có một nhược điểm là làm trình duyệt của bạn phải tốn thời gian chờ đợi để xử lý CSS.
    #h4("Tại sao Responsive Web Design lại quan trọng trong thiết kế web?")
    - Đáp ứng nhu cầu thực tế
    
    Với sự bùng nổ của sự phát triển các thiết bị di động, người dùng smartphone ngày càng tăng trưởng một cách nhanh chóng. Theo số liệu của We Are Social về người dùng Internet vào 01/2017, thì có hơn 50% sử dụng các thiết bị di động để truy cập Internet. Riêng tại Việt Nam, số lượng này vào khoảng hơn 30% và con số này đang tăng mỗi năm. Như vậy, nhu cầu sử dụng Internet nói chung ngày càng tăng và đặc biệt là có một lượng lớn người dùng truy cập Internet từ thiết bị di động. Vì thế, áp dụng RWD chính là đang đáp ứng với nhu cầu thực tế.
    
    - Hiệu quả kinh tế responsive là gì?
    
    Trước đây, các nhà phát triển phải xây dựng ít nhất hai giao diện cho trang web. Một dành cho PC, một dành cho di động. Hoặc thậm chí một số nhà phát triển còn phải xây dựng ứng dụng mobile. Điều này gây tốn kém về mặt chi phí. Chưa kể trên các ứng dụng hoặc giao diện riêng, việc hiển thị dữ liệu chưa chắc đã giống nhau. Vì thế nhà phát triển có thể gặp khó khăn trong việc quản lý.
    
    Đối với RWD, với nguyên lý là một mã nguồn nhưng đa giao diện, tương thích tốt trên nhiều thiết bị. Mặc dù chúng ta không thể lường trước được kích thước của thiết bị. Nhưng với RWD, chuyện này là hoàn toàn khả thi. Từ đó tiết kiệm công sức và chi phí cho nhà phát triển.
    
    - Được Google Search khuyến khích, lợi ích cho SEO:
    
    Từ năm 2015, Google Search ưu tiên hiển thị các trang web có giao diện RWD. Thay đổi này với mong muốn các trang web hướng tới người dùng hơn. Với mong muốn các kết quả tìm được sẽ có nội dung văn bản dễ đọc hơn. Để kiểm tra, các bạn có thể vào trang Mobile-Friendly Test và nhập URL trang web. Kết quả hiển thị sẽ cho biết mức độ thân thiện của website. Nếu website không thân thiện với di động, thứ hạng trang có thể giảm đáng kể. Một khi trang web hỗ trợ RWD, cụ thể là thân thiện với di động, thứ hạng sẽ được tái xử lý.
    
    - Sử dụng công nghệ tuy mới mà “cũ” responsive là gì?
    
    Đối với Web Developer, thì đây là một thách thức nhưng không phải là không làm được. Tuy gọi là công nghệ mới nhưng RWD cơ bản chỉ áp dụng công nghệ CSS3, cụ thể là Media Query. Nghĩa là nếu trước đó đã tìm hiểu HTML & CSS thì việc này là hoàn toàn nằm trong tầm tay. Đặc biệt, RWD là một trong những khóa học nằm trong gói lộ trình Thiết Kế Web đang được CiOne cung cấp. Vì thế hãy yên tâm là các bạn sẽ dễ dàng làm chủ được kỹ thuật này một cách có hệ thống.
    #h4("Lợi ích của Responsive Web Design:")
    Từ phần trước, rõ ràng là thiết kế web đáp ứng rất quan trọng đối với bất kỳ trang web nào và việc không tuân thủ có thể dẫn đến thiệt hại tài chính (do giảm lưu lượng truy cập không phải trả tiền vào trang web).

    Dưới đây là một số lợi ích chính của Responsive Web Design:
    
    - Cải thiện trải nghiệm người dùng
    
    Nói một cách dễ hiểu, Responsive Web Design mang lại trải nghiệm người dùng mượt mà hơn. Bạn có thể tự kiểm tra xem thiết kế nào trong các màn hình dưới đây cung cấp trải nghiệm người dùng tốt hơn:
    Trải nghiệm di động tốt là một trong những điều cơ bản nhất cần ghi nhớ khi thiết kế một trang web tuân theo các nguyên tắc Responsive Web Design.
    
    - Hiệu quả về chi phí
    
    Trước khi Responsive Web Design và tương ứng của nó ra đời, các doanh nghiệp dựa vào việc thiết kế các trang web riêng biệt để phục vụ cho các khung nhìn di động khác nhau. Ở đây, một trang chủ tùy chỉnh đã được hiển thị cho người dùng dựa trên thiết bị mà từ đó yêu cầu được thực hiện.
    
    Đây không phải là một cách tiếp cận có thể mở rộng vì nó sẽ liên quan đến các sửa đổi trong việc triển khai mỗi khi một thiết bị mới được giới thiệu trên thị trường. Khái niệm này đã được sử dụng trước khi cuộc cách mạng di động đạt được động lực! Tạo một trang web đáp ứng phục vụ cho các chế độ xem, trình duyệt và hệ điều hành khác nhau không còn là một lựa chọn mà là một sự bắt buộc đối với các doanh nghiệp để phát triển trong môi trường siêu cạnh tranh này.
    
    - Tỷ lệ thoát và thời gian phiên
    
    Ngoài chi phí phát triển trang web, Responsive Web Design giúp tiết kiệm tiền và mang lại sự gắn bó cho người dùng. Điều này lần lượt giúp tăng thời gian phiên và giảm tỷ lệ thoát. Cả hai yếu tố này đều ảnh hưởng đến thứ hạng của công cụ tìm kiếm.
    
    Theo như các bot của công cụ tìm kiếm được xem xét, chúng không phải là con người có thể đọc và đánh giá nội dung. Nhưng, họ dựa vào con người để làm điều đó. Một trang web có tỷ lệ thoát cao liên tục và thời gian phiên thấp hơn là một chỉ báo cho thấy mọi người không đặc biệt thích trang web đó. Điều này dẫn đến thứ hạng thấp hơn, lưu lượng truy cập ít bị ràng buộc hơn và giảm doanh thu.
    
    - Giảm nỗ lực bảo trì
    
    Các trang web đáp ứng dễ duy trì hơn vì chỉ có một trang web duy nhất mà trên đó các thay đổi được thực hiện để cung cấp cho các thiết bị mới hơn. Tiếp thị và quản lý doanh nghiệp cho sự hiện diện trực tuyến trở nên cực kỳ dễ dàng vì bạn có một trang web duy nhất.
    
    - Trang web Di động riêng biệt
    
    Một thay thế cho thiết kế đáp ứng là phát triển một trang web di động riêng biệt. Cách tiếp cận này có thể giống như quay ngược thời gian 😃 Với sự ra đời của Responsive Web Design, một trang web duy nhất đã trở thành trọng tâm chính của hầu hết các doanh nghiệp.
    
    Dưới đây là ví dụ thiết kế đáp ứng trong đó các trang web di động riêng biệt đang được sử dụng. Tuy nhiên, nó hoạt động nhưng không hoạt động nữa.
    #h3("Tối ưu hóa tốc độ load trang")
    Tối ưu hóa tốc độ load trang là một trong những yếu tố quan trọng để cải thiện trải nghiệm người dùng và tăng tương tác trên website của bạn. Dưới đây là một số cách để tối ưu hóa tốc độ load trang:

    - Tối ưu hóa hình ảnh: Sử dụng các công cụ tối ưu hóa hình ảnh để giảm dung lượng của các hình ảnh trên trang web của bạn, đồng thời áp dụng kỹ thuật lazy loading để chỉ tải hình ảnh khi cần thiết.
  
    - Sử dụng cache: Sử dụng bộ nhớ cache để giảm thời gian tải lại trang web và cải thiện trải nghiệm người dùng.
  
    - Giảm số lượng yêu cầu HTTP: Giảm số lượng yêu cầu HTTP bằng cách sử dụng các kỹ thuật như gộp file CSS và JavaScript hoặc sử dụng các CDN (Content Delivery Network) để phân phối tài nguyên trên nhiều máy chủ.
  
    - Chọn hosting tốt: Lựa chọn một nhà cung cấp hosting tốt có thể giúp tăng tốc độ tải trang web của bạn.
  
    - Tối ưu hóa mã nguồn: Sử dụng các phương pháp tối ưu hóa mã nguồn, chẳng hạn như sử dụng minifier để giảm kích thước của mã HTML, CSS và JavaScript.
  
    - Sử dụng các công cụ đo lường hiệu suất: Sử dụng các công cụ đo lường hiệu suất như Google PageSpeed Insights để theo dõi và đánh giá tốc độ tải trang web của bạn.
      
    Tuy nhiên, việc tối ưu hóa tốc độ load trang là một quá trình liên tục và cần được thực hiện thường xuyên để đạt được hiệu quả tối đa.
    #h2("Giải pháp quản lý dữ liệu khách hàng và đơn hàng hiệu quả")
    #h3("Khái niệm và tính chất của dữ liệu khách hàng và đơn hàng")
    #h4(" khái niệm dữ liệu khách hàng, đơn hàng ")
    Dữ liệu khách hàng là thông tin về khách hàng mà doanh nghiệp thu thập được trong quá trình kinh doanh. Đây là tài nguyên quý giá giúp cho doanh nghiệp hiểu rõ hơn về thị trường và khách hàng của mình, từ đó có thể phát triển các chiến lược tiếp thị và bán hàng hiệu quả hơn.
    
    Đơn hàng là một bản ghi chứa thông tin về sản phẩm hoặc dịch vụ mà khách hàng đã mua từ doanh nghiệp. Dữ liệu đơn hàng cho phép doanh nghiệp hiểu rõ hơn về hành vi mua hàng của khách hàng, từ đó tối ưu hóa quá trình bán hàng và nâng cao chất lượng dịch vụ.
    #h4("Tính chất dữ liệu khách hàng và đơn hàng ")
    Dữ liệu khách hàng và đơn hàng là những dữ liệu quan trọng trong kinh doanh và tiếp thị hiện đại. Dữ liệu khách hàng bao gồm các thông tin về khách hàng như tên, địa chỉ email, số điện thoại, địa chỉ, lịch sử mua hàng, sở thích, quan tâm, v.v. Dữ liệu đơn hàng bao gồm các thông tin về sản phẩm hoặc dịch vụ được mua, giá, số lượng, phương thức thanh toán, ngày giao hàng, v.v.

    Tính chất của dữ liệu khách hàng và đơn hàng là:
    - Có tính đa dạng: Dữ liệu khách hàng và đơn hàng có nhiều loại thông tin khác nhau như tên, địa chỉ, số điện thoại, lịch sử mua hàng, sở thích, quan tâm, v.v.
    - Có tính trùng lặp: Một khách hàng có thể tạo ra nhiều đơn hàng, và một đơn hàng có thể chứa nhiều sản phẩm.
    - Có tính thay đổi: Dữ liệu khách hàng và đơn hàng sẽ liên tục thay đổi theo thời gian khi khách hàng mua sản phẩm mới, đổi thông tin cá nhân hoặc hủy đơn hàng.
    - Có tính cập nhật: Dữ liệu khách hàng và đơn hàng cần phải được cập nhật thường xuyên để đảm bảo tính chính xác và đầy đủ.
    - Có tính ứng dụng cao: Dữ liệu khách hàng và đơn hàng được sử dụng để phân tích, định hướng chiến lược kinh doanh, làm nền tảng cho các chiến dịch tiếp thị và quản lý quan hệ khách hàng.
    #h3("Các giải pháp quản lý dữ liệu hiệu quả")
    #h4("CRM - Customer Relationship Management")
    CRM (Customer Relationship Management) là một phương pháp quản lý, tương tác và liên kết với khách hàng của doanh nghiệp. Trong website TMĐT, CRM được sử dụng để quản lý thông tin khách hàng, ghi nhận các hoạt động liên quan đến khách hàng và xây dựng quan hệ tốt hơn với khách hàng.
    
    #img("images/CRM.png", cap: "Tám khối xây dựng thiết yếu của nền tảng CRM", width: 80%)

    CRM là thị trường phần mềm lớn nhất trên thế giới và ngày càng được chứng minh là tài sản công nghệ tốt nhất mà các công ty có thể đầu tư. Với sự nổi bật mà thị trường phần mềm CRM nền tảng điện toán đám mây đã có được trong nhiều năm và việc CRM có thể dễ dàng tích hợp với nhiều ứng dụng khác mà các doanh nghiệp thường sử dụng, hệ thống CRM giúp người sử dụng bao quát mọi khía cạnh của chu kỳ kinh doanh, từ đó gia tăng doanh số và lợi nhuận tiếp thị, đồng thời cắt giảm chi phí.
    #img("images/CRMloiich.png", cap: "LỢI ÍCH CỦA VIỆC SỬ DỤNG HỆ THỐNG CRM", width: 80%)
    #h4("Hệ thống CRM có các loại")
    Một trong những sự lựa chọn đầu tiên mà doanh nghiệp phải đưa ra là lựa chọn hệ thống CRM tại chỗ hay CRM nền tảng đám mây. Với hệ thống CRM tại chỗ, doanh nghiệp thường phải thiết lập cơ sở hạ tầng phụ trợ hoàn chỉnh và chịu chi phí bảo trì và nâng cấp, ngoài phí giấy phép của phần mềm thực tế.
    
    Hệ thống CRM nền tảng đám mây thường là lựa chọn được ưa thích nhất của nhiều doanh nghiệp vì hệ thống này có thể dễ dàng truy cập được qua bất kỳ trình duyệt nào, cho phép triển khai và sử dụng nhanh hơn. Các lợi ích phụ thêm khác bao gồm không tốn chi phí bảo trì hoặc bảo dưỡng, khả năng truy cập dữ liệu tốt hơn khi cần và mở rộng hoặc thu gọn dễ dàng và linh hoạt.
    #h4("Hệ thống CRM có các tính năng")
    Trong website TMĐT, CRM có thể bao gồm các tính năng sau:
    - Quản lý thông tin khách hàng: Hệ thống CRM cho phép lưu trữ và quản lý thông tin chi tiết về khách hàng, bao gồm tên, địa chỉ, số điện thoại, email, lịch sử mua hàng, câu hỏi và yêu cầu của khách hàng.
    - Quản lý hoạt động liên quan đến khách hàng: Hệ thống CRM cho phép ghi nhận các hoạt động liên quan đến khách hàng như cuộc gọi điện thoại, email và tin nhắn, lịch hẹn, giải đáp thắc mắc của khách hàng,...
    - Quản lý bán hàng: Hệ thống CRM cũng hỗ trợ quản lý quá trình bán hàng từ việc tìm kiếm khách hàng tiềm năng đến việc tạo đơn hàng và theo dõi thanh toán.
    - Xây dựng quan hệ tốt hơn với khách hàng: Hệ thống CRM giúp xác định được nhu cầu và yêu cầu của khách hàng, từ đó đưa ra các chiến lược phù hợp để nâng cao chất lượng dịch vụ, tạo sự tin tưởng và tăng cường sự hài lòng của khách hàng.
    #h4("Quản lý đơn hàng")
    Trong quản lý đơn hàng, việc quản lý dữ liệu hiệu quả là rất quan trọng để giúp cho công việc của người quản lý được dễ dàng hơn và đảm bảo tính chính xác của thông tin. Dưới đây là một số giải pháp quản lý dữ liệu hiệu quả trong quản lý đơn hàng:

    Sử dụng phần mềm quản lý đơn hàng: Phần mềm quản lý đơn hàng sẽ giúp bạn tổ chức và quản lý dữ liệu về sản phẩm, khách hàng, đơn hàng và các hoạt động khác liên quan đến quản lý đơn hàng. Nhờ đó, bạn sẽ có được cái nhìn toàn diện về tình trạng đơn hàng của mình và có thể đưa ra các quyết định kịp thời.
    
    Xác định và sắp xếp các loại dữ liệu: Trong quản lý đơn hàng, các loại dữ liệu như thông tin khách hàng, thông tin sản phẩm, số lượng sản phẩm, giá sản phẩm, thông tin vận chuyển, thanh toán, v.v. nên được xác định và sắp xếp theo từng nhóm riêng biệt để dễ dàng quản lý và tra cứu.
    
    Sử dụng mã định danh sản phẩm và khách hàng: Việc sử dụng mã định danh sản phẩm và khách hàng sẽ giúp bạn dễ dàng tìm kiếm thông tin và phân loại các đơn hàng, sản phẩm và khách hàng.
    
    Quản lý cập nhật dữ liệu thường xuyên: Việc quản lý và cập nhật dữ liệu thường xuyên là rất quan trọng trong quản lý đơn hàng, giúp cho tình trạng dữ liệu được cập nhật liên tục và chính xác, giảm thiểu việc nhập sai thông tin hoặc bị trùng lặp.
    
    Thực hiện sao lưu dữ liệu thường xuyên: Để đảm bảo an toàn cho dữ liệu của mình, bạn nên thực hiện sao lưu dữ liệu thường xuyên để đối phó với các tình huống không mong muốn như mất dữ liệu do hỏng máy tính, virus, hay bị hacker tấn công.
    
    Tóm lại, việc quản lý dữ liệu hiệu quả trong quản lý đơn hàng đóng vai trò quan trọng trong việc giúp cho công việc của người quản lý được dễ dàng hơn và đảm bảo tính chính xác của thông tin.
    #h4("Quản lý kho hàng")
    Trong quản lý kho hàng, việc quản lý dữ liệu hiệu quả là rất quan trọng để giúp cho công việc của người quản lý được dễ dàng hơn và đảm bảo tính chính xác của thông tin. Dưới đây là một số giải pháp quản lý dữ liệu hiệu quả trong quản lý kho hàng:
    
    Sử dụng phần mềm quản lý kho hàng: Phần mềm quản lý kho hàng sẽ giúp bạn tổ chức và quản lý dữ liệu về sản phẩm, số lượng sản phẩm, đơn vị đo lường, vị trí trong kho, v.v. Nhờ đó, bạn sẽ có được cái nhìn toàn diện về tình trạng kho hàng của mình và có thể đưa ra các quyết định kịp thời.
    
    Xác định và sắp xếp các loại dữ liệu: Trong quản lý kho hàng, các loại dữ liệu như thông tin sản phẩm, số lượng sản phẩm, đơn vị đo lường, vị trí trong kho, v.v. nên được xác định và sắp xếp theo từng nhóm riêng biệt để dễ dàng quản lý và tra cứu.
    
    Sử dụng mã định danh sản phẩm và vị trí trong kho: Việc sử dụng mã định danh sản phẩm và vị trí trong kho sẽ giúp bạn dễ dàng tìm kiếm thông tin và phân loại các sản phẩm, đồng thời quản lý được việc xuất nhập kho.
    
    Quản lý cập nhật dữ liệu thường xuyên: Việc quản lý và cập nhật dữ liệu thường xuyên là rất quan trọng trong quản lý kho hàng, giúp cho tình trạng dữ liệu được cập nhật liên tục và chính xác, giảm thiểu việc nhập sai thông tin hoặc bị trùng lặp.
    
    Thực hiện sao lưu dữ liệu thường xuyên: Để đảm bảo an toàn cho dữ liệu của mình, bạn nên thực hiện sao lưu dữ liệu thường xuyên để đối phó với các tình huống không mong muốn như mất dữ liệu do hỏng máy tính, virus, hay bị hacker tấn công.
    
    Tóm lại, việc quản lý dữ liệu hiệu quả trong quản lý kho hàng đóng vai trò quan trọng trong việc giúp cho công việc của người quản lý được dễ dàng hơn và đảm bảo tính chính xác của thông tin.
    #h2("Các lỗi bảo mật phổ biến trong website TMĐT và cách khắc phục")
    Top 10 lỗ hổng OWASP là danh sách các lỗ hổng bảo mật phổ biến nhất trong ứng dụng web. Nó được phát triển bởi OWASP (Open Web Application Security Project) và tập trung vào việc cải thiện bảo mật cho các ứng dụng web.

    OWASP (Open Web Application Security Project) là một tổ chức phi lợi nhuận được thành lập với mục đích tập trung vào việc cải thiện bảo mật cho các ứng dụng web. Tổ chức này liên tục đón nhận đóng góp từ các chuyên gia an ninh mạng, hacker mũ trắng, các sàn Bug Bounty và các tổ chức bảo mật trên toàn thế giới về các lỗ hổng bảo mật và các kỹ thuật tấn công mới nhất.
            
    Danh sách Top 10 lỗ hổng OWASP bao gồm các lỗ hổng bảo mật nguy hiểm nhất mà các nhà phát triển ứng dụng web cần phải biết để có thể bảo vệ ứng dụng web của họ khỏi các cuộc tấn công từ tin tặc và các mối đe dọa bảo mật khác.
    
    #img("images/top10owasp.png", cap: "Danh sách lỗ hổng Top 10 OWASP 2023", width: 80%)
    
    Cứ 3 năm một lần, danh sách này được cập nhật và sửa đổi để phù hợp với các lỗ hổng bảo mật mới nhất và các kỹ thuật tấn công mới nhất. Nắm vững danh sách Top 10 lỗ hổng OWASP sẽ giúp các nhà phát triển ứng dụng web có thể bảo vệ ứng dụng của họ khỏi các mối đe dọa bảo mật đáng lo ngại nhất.
    
    Dưới đây là danh sách Top 10 lỗ hổng OWASP được cập nhật mới nhất vào năm 2021.
    - Broken Access Control
    - Cryptographic Failures
    - Injection
    - Insecure Design (Lỗ hổng mới cập nhật)
    - Security Misconfiguration
    - Vulnerable and Outdated Components
    - Identification and Authentication Failures
    - Software and Data Integrity Failures (Lỗ hổng mới cập nhật)
    - Security Logging and Monitoring Failures
    - Server-Side Request Forgery (SSRF) (Lỗ hổng mới cập nhật)

   * Giải pháp để khắc phục các lỗ hổng Top 10 OWASP*
   
    Để khắc phục các lỗ hổng bảo mật liên quan đến danh sách Top 10 OWASP, các nhà phát triển ứng dụng web có thể áp dụng các giải pháp sau:
    
    - Thực hiện kiểm tra bảo mật (Web Penetration Testing) và phát hiện các lỗ hổng tiềm ẩn trước khi ứng dụng được triển khai.
    - Sử dụng các giải pháp bảo mật đáng tin cậy để ngăn chặn các cuộc tấn công trên các lỗ hổng bảo mật phổ biến nhất.
    - Thực hiện Pentest thường xuyên và cập nhật các bản vá lỗ hổng bảo mật mới nhất cho các thư viện, framework, module của ứng dụng web.
    - Đào tạo nhân viên về các vấn đề bảo mật và hãy đảm bảo rằng họ phải có các kiến thức và kỹ năng lập trình an toàn cần thiết để bảo vệ ứng dụng.
    #h3("Broken Access Control (phá vỡ kiểm soát truy cập)")
    Kiểm soát truy cập là sự kiểm soát người dùng không cho phép họ thực thi những hành động bên ngoài quyền hạn. Các lỗi thường dẫn đến tiết lộ thông tin trái phép, sửa đổi hoặc phá hủy tất cả dữ liệu hoặc thực hiện chức năng ngoài giới hạn của người dùng.
    
    Các lỗ hổng phổ biến
    - Sửa đổi URL
    - Sửa đổi thông tin nhận dạng để truy cập tài khoản người khác (IDOR)
    - Leo thang đặc quyền
    
    Cách ngăn chặn
    - Ngoại trừ tài nguyên công cộng, còn lại từ chối theo mặc định
    - Xác thực người dùng khi học quay lại ứng dụng
    - Kiểm tra quyền tại thời điểm người dùng cố gắng thực hiện hành động
    Ví dụ: Kẻ tấn công chỉ cần buộc các trình duyệt đến các URL mục tiêu. Quyền quản trị được yêu cầu để truy cập vào trang quản trị https://example.com/app/getappInfo, https://example.com/app/admin
    #h3("Cryptographic Failures (lỗi mật mã bị hỏng)")
    Bảo mật thông tin nhạy cảm bằng cách mã hóa thông tin theo các cách khác nhau, nhưng nếu cách mã hóa đó kẻ tấn công có thể giải mã được hay là cách thức giải mã không đảm bảo an toàn bản rõ thì những thông tin nhạy cảm đó sẽ bị rò rỉ ra ngoài.
    
    Các lỗi phổ biến
    - Sử dụng những giao thức truyền dữ liệu dạng rõ như HTTP, FTP,...
    - Sử dụng những mã hóa đã cũ hoặc yếu
    - Sử dụng những hàm băm không dùng nữa như md5, SHA1
    - Khóa bí mật dễ đoán
    - Chuỗi mã hóa không được xác thực
    
    Cách ngăn chặn
    - Không sử dụng những giao thức đã cũ như FTP, SMTP,... để vận chuyển dữ liệu nhạy cảm
    - Đảm bảo các thuật toán mã hóa đạt tiêu chuẩn mạnh mẽ
    - Mã hóa dữ liệu trên đường truyền bằng TLS, HTTPS
    - Lưu trữ password bằng các hàm băm mạnh như Argon2, scrypt, bcrypt,...
    - Luôn sử dụng mã hóa được xác thực thay vì chỉ mã hóa
    
    Ví dụ: Một trang web không sử dụng TLS cho tất cả các trang hoặc hỗ trợ mã hóa yếu. Kẻ tấn công giám sát lưu lượng mạng (như tại một mạng không dây không an toàn), hạ cấp các kết nối từ HTTPS xuống HTTP, chặn các yêu cầu và đánh cắp cookie phiên của người dùng. Sau đó, kẻ tấn công phát lại cookie này và chiếm quyền điều khiển phiên của người dùng, truy cập hoặc sửa đổi dữ liệu cá nhân của người dùng. Thay vì những điều trên, họ có thể thay đổi tất cả dữ liệu được vận chuyển, ví dụ như người nhận chuyển tiền.
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

    Ví dụ, trong một hệ thống với 1000 đầu vào, lọc thành công 999 đầu vào là không đủ vì điều này vẫn để lại một phần giống như “gót chân Asin”, có thể phá hoại hệ thống của bạn bất cứ lúc nào. Bạn có thể cho rằng đưa kết quả truy vấn SQL vào truy vấn khác là một ý tưởng hay vì cơ sở dữ liệu là đáng tin cậy. Nhưng thật không may vì đầu vào có thể gián tiếp đến từ những kẻ có ý đồ xấu. Đây được gọi là lỗi Second Order SQL Injection.

    Việc lọc dữ liệu khá khó vì thế các bạn nên sử dụng các chức năng lọc có sẵn trong framework của mình. Các tính năng này đã được chứng minh sẽ thực hiện việc kiểm tra một cách kỹ lưỡng. Bạn nên cân nhắc sử dụng các framework vì đây là một trong các cách hiệu quả để bảo vệ máy chủ của bạn.
    #h3("Insecure Design (Thiết kế không an toàn)")
    Thiết kế an toàn là phân tích các giả định và điều kiện cho các dòng dự kiến đảm bảo chính xác, tránh trường hợp không mong muốn và có hành vi phù hợp với từng trường hợp. Đảm bảo kết quả được ghi lại trong nhật kí của người dùng. Học hỏi từ những sai lầm và đưa ra những cải tiến thích hợp.
    Cách ngăn chặn
    - Thiết lập sử dụng những thư viện mẫu thiết kế an toàn
    - Kiểm tra tính hợp lí ở mỗi cấp ứng dụng
    - Tách các lớp phần trên hệ thống và các lớp mạng
    - Hạn chế tiêu thụ tài nguyên người dùng hoặc dịch vụ
    Ví dụ: Một rạp chiếu phim cho phép đặt chỗ theo nhóm tối đa 15 người trước khi đặt tiền cọc, một kẻ tấn công có thể chạy lệnh để đặt tất cả các chỗ trong rạp sau đó dừng lại ở bước đặt cọc, gây tổn thất lớn về kinh tế
    #h3("Security Misconfiguration (Cấu hình bảo mật sai)")
    Nếu Insecure Design thuộc về phần thiết kế thì Security Misconfiguration thuộc về phần triển khai. Những lỗi phổ biến thường xảy ra
    - Các tính năng không cần thiết được bật như các port, service, account,...
    - Thiếu việc tăng cường bảo mật cho từng phần của ứng dụng
    - Các tài khoản và mật khẩu vẫn để mặc định không thay đổi
    - Phần mềm đã lỗi thời
    
    Trong thực tế, máy chủ website và các ứng dụng đa số bị cấu hình sai. Có lẽ do một vài sai sót như:
    - Chạy ứng dụng khi chế độ debug được bật.
    - Directory listing
    - Sử dụng phần mềm lỗi thời (WordPress plugin, PhpMyAdmin cũ)
    - Cài đặt các dịch vụ không cần thiết.
    - Không thay đổi default key hoặc mật khẩu
    - Trả về lỗi xử lý thông tin cho kẻ tấn công lợi dụng để tấn công, chẳng hạn như stack traces.
    
    Cách ngăn chặn
    - Loại bỏ những tài nguyên, tính năng không cần thiết
    - Cung cấp sự hiệu quả và an toàn giữa các thành phần
    - Liên tục cập nhật những phiên bản mới nhất
    
    Ví dụ: Danh sách thư mục không bị tắt trên máy chủ. Kẻ tấn công phát hiện ra chúng có thể liệt kê các thư mục một cách đơn giản. Điều này có thể dẫn đến kẻ tấn công dịch ngược lại đoạn code và là tiềm ẩn rất lớn cho nhiều mối nguy hiểm khác
    #h3("Các thành phần dễ bị tổn thương và lỗi thời")
    Những lỗi phổ biến
    - Không quét lỗ hổng thường xuyên và đăng ký nhận các bản tin bảo mật liên quan đến các thành phần bạn sử dụng
    - Phần mềm dễ bị tấn công: không được hỗ trợ hoặc lỗi thời
    - Không sửa chữa, nâng cấp các nền tảng
    - Không bảo mật cấu hình của các thành phần
    
    Cách ngăn chặn
    - Loại bỏ các phụ thuộc không sử dụng, các tính năng, thành phần, tệp và tài liệu không cần thiết
    - Liên tục kiểm tra các phiên bản của cả thành phần phía máy khách và máy chủ
    - Chính lấy các thành phần từ nguồn chính thức qua các liên kết an toàn
    
    Ví dụ: Các thành phần thường chạy với các đặc quyền giống như chính ứng dụng đó, vì vậy sai sót trong bất kỳ thành phần nào có thể dẫn đến tác động nghiêm trọng. Những sai sót như vậy có thể là ngẫu nhiên hoặc cố ý.
    #h3("Nhận dạng và xác thực bị hỏng")
    Các lỗ hổng trong hệ thống xác thực (login) có thể cho phép kẻ tấn công truy cập vào tài khoản người dùng và thậm chí có khả năng xâm nhập toàn bộ hệ thống bằng tài khoản quản trị viên. Ví dụ: kẻ tấn công có thể lấy một danh sách chứa hàng nghìn tổ hợp tên người dùng / mật khẩu đã biết có được trong một lần vi phạm dữ liệu và sử dụng tập lệnh để thử tất cả các tổ hợp đó trên hệ thống đăng nhập để xem có tổ hợp nào hoạt động không.

    Một số chiến lược để giảm thiểu lỗ hổng xác thực là sử dụng xác thực 2 yếu tố two-factor authentication (2FA) cũng như hạn chế hoặc trì hoãn các nỗ lực đăng nhập lặp lại bằng cách sử dụng giới hạn về số lần đăng nhập & thời gian giãn cách giữa các lần đăng nhập sai.

    Đây là nhóm các vấn đề có thể xảy ra trong quá trình xác thực. Có một lời khuyên là không nên tự phát triển các giải pháp mã hóa vì rất khó có thể làm được chính xác.

    Có rất nhiều rủi ro có thể gặp phải trong quá trình xác thực:
    - URL có thể chứa Session ID và rò rỉ nó trong Referer Header của người dùng khác.
    - Mật khẩu không được mã hóa hoặc dễ giải mã trong khi lưu trữ.
    - Lỗ hổng Session Fixation.
    - Tấn công Session Hijacking có thể xảy ra khi thời gian hét hạn của session không được triển khai đúng hoặc sử dụng HTTP (không bảo mật SSL)…
    - ...
    
    Cách ngăn chặn lỗ hổng: Cách đơn giản nhất để tránh lỗ hổng bảo mật web này là sử dụng một framework. Trong trường hợp bạn muốn tự tạo ra bộ xác thực hoặc mã hóa cho riêng mình, hãy nghĩ đến những rủi ro mà bạn sẽ gặp phải và tự cân nhắc kĩ trước khi thực hiện:
    - Sử dụng xác thực đa yếu tố một cách an toàn
    - Giới hạn số lần xác thực nhất định
    - Thực hiện kiểm tra mật khẩu yếu và yêu cầu mật khẩu có độ phức tạp nhất định
    - Đảm bảo các đường dẫn khôi phục thông tin xác thực và API được tăng cường chống lại các cuộc tấn công
    - Sử dụng trình quản lí phiên tích hợp an toàn, tạo ID ngẫu nhiên mới với độ phức tạp cao

    Ví dụ: Bạn đặt mật khẩu quá dễ đoán hay là ứng dụng không giới hạn số lần đăng nhập và kẻ tấn công thực hiện cuộc tấn công từ điển
    #h3("Software and Data Integrity Failures (Lỗi toàn vẹn dữ liệu và phần mềm) - Insecure Deserialization")
    Các lỗi về tính toàn vẹn của phần mềm và dữ liệu liên quan đến code và cơ sở hạ tầng không bảo vệ khỏi các vi phạm tính toàn vẹn:
    - Ứng dụng dựa vào các plugin, thư viện hoặc mô-đun không đáng tin cậy, không an toàn. Dẫn đến truy cập trái phép, thực thi các mã độc hại hoặc xâm nhập hệ thống
    - Tự động cập nhật các bản cập nhật mà không xác minh tính toàn vẹn đầy đủ và được áp dụng cho phiên bản trước đó
    
    Cách ngăn chặn:
    - Sử dụng chữ kí số để xác minh phần mềm
    - Đảm bảo các thư viện và phần phụ thuộc
    - Có công cụ bảo mật để kiểm tra độ an toàn phần mềm
    - Đảm bảo những dữ liệu chưa được kí hoặc chưa được mã hóa không gửi đến các máy khách không đáng tin cậy
    
    Ví dụ: Cập nhật mà không cần kí, người dùng sẽ vô tình tải về những bản cập nhật chứa mã độc mà kẻ tấn công cố tình phát tán trên mạng để đánh cắp thông tin hay khai thác dữ liệu trong máy nạn nhân
    #h3("Security Logging and Monitoring Failures (Các lỗi theo dõi và ghi nhật kí bảo mật)")
    Ghi nhật kí bảo mật nhằm giúp phát hiện, báo cáo và phản hồi các vi phạm nhằm kịp thời ngăn chặn các cuộc tấn công nguy hiểm. Ghi nhật kí giám sát và phản hồi không đầy đủ có thể xảy ra bất cứ lúc nào
    - Các sự kiện quan trọng như đăng nhập không thành công hay những thao tác có tác động lớn không được ghi lại
    - Các cảnh báo lỗi không thông báo, không đầy đủ hoặc không rõ ràng
    - Nhật kí các hoạt động API không được giám sát
    - Ứng dụng không thể hoặc phản hồi quá chậm các phát hiện, báo cáo hoặc cảnh báo về các cuộc tấn công đang hoạt động trong thời gian thực
    
    Cách ngăn chặn
    - Đảm bảo các lỗi đăng nhập, kiểm soát truy cập và xác thực đầu vào phía máy chủ được ghi lại đủ để xác định các tài khoản đáng ngờ
    - Đảm bảo nhật kí được mã hóa chính xác tránh việc tiêm hoặc tấn công vào hệ thống ghi nhật kí hoặc giám sát
    - Đảm bảo các hành động tác động lớn được kiểm tra với các biện pháp kiểm soát tính toàn vẹn để ngăn chặn việc giả mạo hoặc xóa, chẳng hạn như bảng cơ sở dữ liệu chỉ được thêm vào
    - Các nhóm DevSecOps nên thiết lập giám sát và cảnh báo hiệu quả để các hoạt động đáng ngờ được phát hiện và phản hồi nhanh chóng
    
    Ví dụ: Một hãng hàng không lớn của Ấn Độ đã bị vi phạm dữ liệu liên quan đến dữ liệu cá nhân của hàng triệu hành khách trong hơn mười năm, bao gồm cả dữ liệu hộ chiếu và thẻ tín dụng. Vi phạm dữ liệu xảy ra tại một nhà cung cấp dịch vụ lưu trữ đám mây bên thứ ba, người này đã thông báo cho hãng hàng không về vi phạm sau một thời gian
    #h3("Server-side Request Forgecy (SSRF- Giả mạo yêu cầu phía máy chủ)")
    SSRF xảy ra bất cứ khi nào khi ứng dụng web đang tìm nạp tài nguyên từ xa mà không xác thực URL do người dùng cung cấp. Nó cho phép kẻ tấn công ép ứng dụng gửi một yêu cầu đến một điểm đích không mong muốn, ngay cả khi được bảo vệ bởi tường lửa
    Cách ngăn chặn
      Lớp mạng
          - Phân đoạn chức năng truy cập tài nguyên từ xa trong các mạng riêng biệt để giảm tác động của SSRF
          - Thực thi các chính sách tường lửa “từ chối theo mặc định” hoặc các quy tắc kiểm soát truy cập mạng để chặn tất cả trừ lưu lượng mạng nội bộ thiết yếu
      Lớp ứng dụng
          - Làm sạch và xác thực tất cả dữ liệu đầu vào do người dùng cung cấp
          - Thực thi lược đồ URL, cổng là điểm đến với danh sách cho phép xác thực
          - Tắt chuyển hướng HTTP
    Ví dụ: Những kẻ tấn công có thể truy cập các tệp cục bộ chẳng hạn như hoặc các dịch vụ nội bộ để lấy thông tin nhạy cảm như file:///etc/passwd và http://localhost:28017/admin
    #h2("Giải pháp xác thực an toàn bảo mật cho dữ liệu và thanh toán")
    #h3("SSL - Secure Socket Layer")
    SSL (Secure Socket Layer) là một công nghệ mã hóa dữ liệu được sử dụng để bảo vệ thông tin truyền tải giữa các máy tính trên mạng Internet. SSL giúp đảm bảo rằng thông tin được truyền từ người dùng đến máy chủ và ngược lại là an toàn và không thể bị đánh cắp hoặc chỉnh sửa trong quá trình truyền.

    Khi bạn kết nối đến một trang web an toàn, giao thức HTTPS được sử dụng, điều này có nghĩa là trang web đã được bảo vệ bởi SSL. Khi bạn truy cập trang web này, trình duyệt của bạn sẽ thiết lập một kết nối an toàn với máy chủ thông qua SSL. Trong quá trình này, thông tin được truyền giữa trình duyệt và máy chủ được mã hóa để đảm bảo tính bảo mật.
    
    SSL sử dụng một phương thức mã hóa gọi là mã hóa khóa công khai (public key encryption) để bảo vệ thông tin truyền tải. Điều này có nghĩa là thông tin được mã hóa bởi một khóa công khai được cung cấp bởi máy chủ, và chỉ có thể được giải mã bằng khóa riêng tư được giữ bí mật trên máy chủ. Khi thông tin được gửi từ trình duyệt của người dùng đến máy chủ, nó sẽ được mã hóa bằng khóa công khai và chỉ có thể được giải mã bởi máy chủ với khóa riêng tư tương ứng.
    
    SSL là một trong những công nghệ bảo mật trực tuyến quan trọng nhất và được sử dụng rộng rãi trong các ứng dụng web, email và các ứng dụng trực tuyến khác.
    #h3("Tokenization")
    Mã hóa không phải là cách duy nhất để che giấu giá trị số nhận dạng tài chính hoặc thông tin cá nhân của người dùng. Tokenization là một quá trình mà trong đó thông tin thanh toán nhạy cảm của người sử dụng được thay thế bằng một tập hợp các ký tự được gọi là token và các token này sẽ không ảnh hưởng đến tính an toàn trong các giao dịch trực tuyến và di động. Các máy khách sẽ thực hiện truyền mã token, thay vì dữ liệu thông tin gốc quan trọng, điều này khiến dữ liệu sẽ không thể bị đánh cắp hoặc không có giá trị đối với kẻ tấn công khi đánh cắp được.

    Không giống với chức năng của hệ thống mã hóa, hệ thống sử dụng phương thức tokenization sẽ thực hiện tạo ra token mới cho mỗi người dùng mới, liên kết dữ liệu gốc với token nhưng không thực hiện giải mã token và làm lộ dữ liệu gốc.
    
    Ví dụ, tại một sòng bạc, những người chơi đánh bạc sẽ nhận được các token để đổi lấy một số lượng tiền mặt. Sòng bạc sẽ cho phép người chơi đánh bạc bằng các token này mà không cần sử dụng tiền mặt thực tế. Nếu token bị đánh cắp thì những token đó sẽ không thể được sử dụng trong các sòng bạc khác.
    #h3("3D Secure")
    3D Secure là một phương thức xác thực thanh toán trực tuyến được sử dụng bởi các ngân hàng và tổ chức thẻ tín dụng để cung cấp cho khách hàng một lớp bảo vệ bổ sung khi sử dụng thẻ của họ để mua hàng trực tuyến. Khi giao dịch được khởi tạo, khách hàng sẽ được yêu cầu cung cấp thông tin xác thực bổ sung, chẳng hạn như mật khẩu hoặc mã OTP (One-Time Password), trước khi giao dịch được phê duyệt. Điều này giúp đảm bảo rằng chỉ có chủ sở hữu của thẻ mới có thể thực hiện giao dịch và giảm thiểu rủi ro gian lận trong các giao dịch trực tuyến.
    3D Secure là một phương thức xác thực thanh toán trực tuyến được sử dụng để bảo vệ các giao dịch trực tuyến khỏi các hoạt động gian lận. Phương thức này yêu cầu khách hàng cung cấp thông tin xác thực bổ sung như mật khẩu hoặc mã OTP trước khi giao dịch được phê duyệt.

    Khi khách hàng thực hiện giao dịch trực tuyến, nếu ngân hàng hoặc tổ chức thẻ của họ hỗ trợ 3D Secure, họ sẽ được chuyển tiếp đến trang xác thực riêng của ngân hàng hoặc tổ chức thẻ. Trang web này sẽ yêu cầu khách hàng cung cấp thông tin xác thực bổ sung, chẳng hạn như mật khẩu hoặc mã OTP, để xác minh danh tính của họ. Sau khi thông tin được cung cấp và xác thực thành công, giao dịch sẽ được phê duyệt và tiền sẽ được chuyển vào tài khoản người bán hàng.
    
    Với 3D Secure, khách hàng có thể yên tâm khi thực hiện giao dịch trực tuyến vì phương thức này giúp hạn chế rủi ro bị gian lận và tránh bị mất tiền của mình.
    #h3("PCI DSS Compliance- Tuân thủ Tiêu chuẩn An ninh Dữ liệu Thẻ")
    #img("images/PCI.png", cap: "OWASP Top 10 2023", width: 80%)
    PCI DSS viết tắt cho Payment Card Industry Data Security Standard là một tiêu chuẩn an ninh thông tin bắt buộc dành cho các doanh nghiệp lưu trữ, truyền tải và xử lý thẻ thanh toán quản lý bởi 05 tổ chức thanh toán quốc tế như Visa, MasterCard, American Express, Discover và JCB. PCI DSS là một tiêu chuẩn được các tổ chức thanh toán quốc tế nêu trên ủy quyền quản lý cho Hội đồng Bảo mật dữ liệu thẻ thanh toán PCI SSC (Payment Card Industry Security Standard Council).
    PCI DSS (Payment Card Industry Data Security Standard) là một tiêu chuẩn an ninh thông tin của ngành thanh toán thẻ. Tiêu chuẩn này được thiết kế nhằm bảo vệ thông tin dữ liệu thẻ tín dụng và ngăn chặn các cuộc tấn công trên hệ thống thanh toán.

    Để đạt được tuân thủ PCI DSS, các doanh nghiệp phải thực hiện theo một loạt các yêu cầu khắt khe, chẳng hạn như:
    
    Thực hiện bảo mật hệ thống và mạng để bảo vệ dữ liệu thẻ tín dụng.
    
    Bảo vệ các thông tin xác thực của khách hàng bằng cách sử dụng các giải pháp mã hóa.
    
    Thực hiện quản lý quy trình và chính sách bảo mật, đảm bảo rằng nhân viên được đào tạo và thực hiện theo tiêu chuẩn an ninh thông tin.
    
    Quản lý rủi ro và đánh giá các điểm yếu trong hệ thống để đảm bảo rằng các bước bảo vệ được triển khai một cách hiệu quả.
    
    Đảm bảo rằng các bên liên quan, chẳng hạn như nhà cung cấp dịch vụ thanh toán và đối tác kinh doanh, cũng tuân thủ các yêu cầu của PCI DSS.
    
    Việc tuân thủ PCI DSS là rất quan trọng để bảo vệ thông tin cá nhân và tài khoản ngân hàng của khách hàng. Các doanh nghiệp có thể áp dụng các giải pháp công nghệ để đảm bảo tiêu chuẩn an ninh này, hoặc thuê các nhà cung cấp dịch vụ chuyên nghiệp để hỗ trợ cho việc tuân thủ PCI DSS.
    #h3("OAuth")
    OAuth (Open Authorization) là một giao thức xác thực và ủy quyền được sử dụng để cho phép người dùng cấp quyền truy cập tài khoản của mình cho các ứng dụng, dịch vụ và trang web khác.

    OAuth cho phép người dùng chia sẻ thông tin cá nhân và tài khoản của họ mà không cần tiết lộ mật khẩu của mình. Thay vào đó, OAuth sử dụng một mã truy cập để cung cấp quyền truy cập. Khi người dùng cấp quyền truy cập cho ứng dụng, dịch vụ hoặc trang web, mã truy cập sẽ được tạo ra. Mã này sau đó được sử dụng để xác thực yêu cầu truy cập từ ứng dụng, dịch vụ hoặc trang web đó.
    
    Ví dụ, nếu bạn muốn sử dụng tài khoản Facebook của mình để đăng nhập vào một ứng dụng khác, thì ứng dụng đó sẽ yêu cầu bạn cấp quyền truy cập vào tài khoản Facebook của mình. Nếu bạn đồng ý, mã truy cập sẽ được tạo ra và ứng dụng sẽ sử dụng nó để yêu cầu các thông tin từ tài khoản Facebook của bạn. Bằng cách này, bạn không cần phải tiết lộ mật khẩu của mình cho ứng dụng khác.
    
    OAuth là một giao thức quan trọng trong việc xác thực và ủy quyền truy cập dữ liệu trên Internet. Nó được sử dụng rộng rãi trong các ứng dụng web và di động để giúp người dùng dễ dàng chia sẻ thông tin của họ và tạo ra trải nghiệm người dùng thuận tiện hơn.
    #h3("Secure Payment Protocols")
    Secure Payment Protocol (SPP) là một giao thức thanh toán trực tuyến được thiết kế để đảm bảo rằng các giao dịch thanh toán được thực hiện một cách an toàn và bảo mật. Giao thức này được xây dựng trên cơ sở các tiêu chuẩn bảo mật hàng đầu hiện nay và đảm bảo rằng thông tin thanh toán được mã hóa và bảo mật trong suốt quá trình truyền tải. SPP sử dụng các phương pháp mã hóa và xác thực để đảm bảo tính toàn vẹn của dữ liệu trong quá trình truyền tải. SPP cũng được thiết kế để hỗ trợ các hình thức thanh toán trực tuyến khác nhau, bao gồm thẻ tín dụng, thẻ ghi nợ và tài khoản ngân hàng trực tuyến.
    
    Secure Payment Protocols (giao thức thanh toán an toàn) là các chuỗi quy trình được thiết kế để đảm bảo tính toàn vẹn, bảo mật và sự riêng tư của thông tin liên quan đến các giao dịch thanh toán. Mục đích của các giao thức thanh toán an toàn là đảm bảo rằng các giao dịch thanh toán được thực hiện một cách an toàn, tin cậy và bảo mật.
    
    Các giao thức thanh toán an toàn có thể bao gồm các quy trình như xác thực người dùng, mã hóa dữ liệu, xác thực ngân hàng hoặc tổ chức thanh toán, xác thực thẻ thanh toán, xác thực các giao dịch và giám sát giao dịch để phát hiện các hoạt động gian lận.
    
    Một trong những yếu tố quan trọng trong các giao thức thanh toán an toàn là tính khả thi. Các giao thức thanh toán an toàn phải có khả năng thực hiện trên nhiều nền tảng và thiết bị khác nhau để đảm bảo rằng các giao dịch thanh toán có thể được thực hiện dễ dàng và tiện lợi.
    Các giao thức thanh toán an toàn cũng phải đảm bảo tính toàn vẹn của thông tin. Điều này có nghĩa là thông tin được truyền đi và lưu trữ trong quá trình thanh toán phải được bảo vệ và không thể bị thay đổi hoặc tấn công từ bên ngoài.
    
    Ngoài ra, các giao thức thanh toán an toàn còn phải đảm bảo sự riêng tư của thông tin. Điều này có nghĩa là thông tin thanh toán không được chia sẻ với bất kỳ bên thứ ba nào, trừ khi được sự cho phép của người dùng.
    #h2("Kết chương")
    Trong chương 1 đã tìm hiểu về thương mại điện tử, website thương mại điện tử, các yếu tố quan trọng để thiết kế thương mại điện tử và tìm hiểu các lỗi bảo mật phổ biến mới nhất hiện nay cũng như các giải pháp xác thực an toàn cho dữ kiệu thanh toán. Từ những phần tìm hiểu này cho thấy việc xây dựng 1 trang website thương mại điện tử an toàn với doanh nghiệp cũng như khác hàng sử dụng là vô cùng quan trọng. Phần tiếp theo của đồ án sẽ nói về phân tích và thiết kế website thương mại điện tử xây dựng dưa trên việc khảo sát và xác định yêu cầu ở Chương 1.
    #h1("Phân tích và thiết kế website TMĐT")
    #h2("Mô tả bài toán")
    #h3("Phân tích bài toán")
    Công ty ABC kinh doanh về lĩnh vực may mặc muốn xây dựng hệ thống website thương mại điện tử với các yêu cầu;
    - giao diện quản lý đơn giản dễ sử dụng, giao diện người dùng dễ nhìn, đặt hàng nhanh chóng
    - có chatbot, có biểu đồ quản lý thống kê theo ngày tháng năm
    - chức năng gửi thông báo về email
    - nhiều dịch vụ thanh toán
    - đăng ký tài khoản dễ dàng
    - ...
    #h3("Phân tích bài toán")
    Quá trình phân tích và thiết kế website TMĐT bao gồm các bước sau:
    - Phân tích yêu cầu: Đây là bước đầu tiên trong quá trình phát triển trang web TMĐT. Trong bước này, nhóm phân tích cần xác định yêu cầu của khách hàng về tính năng và giao diện của trang web TMĐT. Các yêu cầu này sẽ được sử dụng để tạo ra một kế hoạch phát triển chi tiết cho trang web TMĐT.
    - Thiết kế giao diện: Sau khi xác định yêu cầu của khách hàng, nhóm thiết kế sẽ bắt đầu thiết kế giao diện cho trang web TMĐT. Thiết kế này sẽ bao gồm việc xác định cấu trúc của trang web, bố trí các thành phần trên trang web và thiết kế các mẫu giao diện cho các trang khác nhau.
    - Phát triển mã nguồn: Khi đã có thiết kế giao diện, nhóm phát triển sẽ bắt đầu phát triển mã nguồn để tạo ra các tính năng cần thiết cho trang web TMĐT.
    - Kiểm thử: Sau khi hoàn tất phát triển, trang web TMĐT sẽ được kiểm thử để đảm bảo rằng các tính năng hoạt động chính xác và không có lỗi.
    - Triển khai: Khi đã kiểm tra và hoàn tất, trang web TMĐT sẽ được triển khai trên môi trường sản xuất để khách hàng có thể truy cập và sử dụng.
    - Bảo trì và cập nhật: Sau khi triển khai, trang web TMĐT sẽ được bảo trì và cập nhật để đảm bảo rằng các tính năng của trang web luôn hoạt động chính xác và cập nhật với các yêu cầu mới của khách hàng.
    #h2("Phân tích nghiệp vụ và yêu cầu chức năng")
    #img("images/use tong quat.png", cap: "Biểu đồ usecase tổng quát", width: 80%)
    #h3("Chức năng  đăng ký tài khoản")
    Chức năng đăng ký tài khoản cho phép khách hàng có thể tạo một tài khoản mới trên trang web TMĐT. Người dùng cần cung cấp thông tin cá nhân như tên đăng nhập, mật khẩu, địa chỉ email và thông tin liên lạc. Thông tin này sẽ được lưu trữ trong hệ thống của trang web để khách hàng có thể đăng nhập lại vào lần sau.
    #img("images/bieudoTrinhtuDangky.png", cap: "Biểu đồ trình tự đăng ký", width: 80%)
    #table(
        columns: (1fr, auto),
        inset: 10pt,
        align: horizon,
        [*Usecase*], [*Đăng ký hệ thống *],
        [*Usecase*], [*Đăng ký hệ thống *],
        [*Usecase*], [*Đăng ký hệ thống *],
        [*Usecase*], [*Đăng ký hệ thống *],
        [*Usecase*], [*Đăng ký hệ thống *],
        [*Usecase*], [*Đăng ký hệ thống *]
    )
    #h3("Chức năng đăng nhập")
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
    #h1("Tài liệu tham khảo")
    + OWASP Top 10 Vulnerabilities 2023 [https://www.edudwar.com/owasp-top-10-vulnerabilities/]
    + What Is Responsive Web Design? [https://www.lambdatest.com/blog/importance-of-responsive-web-design/]
    + Hệ thống CRM [https://www.zoho.com/vi/crm/what-is-crm.html]
])


    

    