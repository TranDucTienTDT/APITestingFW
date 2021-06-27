Feature: MMA flow for posting non-duplicated jobs API testing

  Scenario: Posting a duplicated job with "organizationId: This field may not be blank."
    Given Login as Admin  user
    When The POST request with uri "ai/api/v1/jobs/" and payload bellow is sent.
      """
      {
        "organizationId":"",
        "position":"MMA new test live 6",
        "organizationSize":"Medium",
        "jobType": "123123sad",
        "expirationDate":"23/10/2020",
        "organizationName": "Leo Corp. Industries",
        "benefit":"laptopchế độ bảo hiểmdu lịchphụ cẦpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "description":"<p>•Đề xuất, đưa ra quy trình phát triển (development process) sản phẩm phù hợp với yêu cầu cụ thể của từng dự án.</p><p>•Đưa ra những tài liệu, biểu mẫu, hướng dẫn để đảm bảo chất lượng của sản phẩm cho tất cả các bộ phận trong nhóm phát triển sản phẩm.</p><p>•Lên kế hoạch test, thiết kế test case, test script.</p><p>•Thực thi theo test plan, test case.</p><p>•Thu thập thông tin, gửi báo cáo chất lượng cho khách hàng hoặc project manager.</p><p>•Kiểm tra, audit việc thực thi quy trình của các bộ phận trong nhóm làm sản phẩm có đúng quy trình QA đã đề ra không.</p><p>•Nhắc nhở đội ngũ phát triển sản phẩm việc tuân thủ theo quy trình làm việc đã đưa ra.</p><p>•Điều chỉnh, thay đổi quy trình phù hợp với từng sản phẩm mà các team đang thực hiện</p>",
        "industryId":19,
        "languageId":1,
        "levelId":"f6af5757-09b9-4e92-897a-d232d352bdf0",
        "link":"https://www.linkedin.com/jobs/view/software-project-manager-with-joining-bonus-embedded-automotive-at-robert-bosch-engineering-and-business-solutions-vietnam-1855139173/?refId=216cb9b7-1df6-40e9-ae51-5a3f00f5e53d&trk=public_jobs_topcard_title&originalSubdomain=vn&cx=151234e566665e54326381",
        "quantity":1.0,
        "organizationIndustryId": "112233",
        "requirement":"<p>•Khả năng tổ chức, tư duy logic và có hệ thống.</p><p>•Kỹ năng phân tích làm việc trên số liệu tốt.</p><p>•Tốt nghiệp Đại học chuyên ngành Khoa học máy tính, Kỹ thuật hoặc các ngành liên quan</p><p>•Kiến thức tổng quan về test: định nghĩa cơ bản, các thuật ngữ, quy trình phát triển phần mềm, quy trình test</p><p>•Có kinh nghiệm về xây dựng quy trình hoặc là QA Fsoft. Có kinh nghiệm ISO20K, AMS, ITIL là lợi thế</p><p>•Có kỹ năng sử dụng các tool test tải, test crash giao diện</p><p>•Có kiến thức căn bản về máy tính, tin học văn phòng căn bản, cài đặt phần mềm, sử dụng internet</p><p>•Biết sử dụng các công cụ bug tracking</p><p>•Có kiến thức về lập trình: Căn bản SQL, HTML, CSS</p><p>•Hiểu rõ về các chứng chỉ CMMI, ISO… trong phần mềm để xây dựng các quy trình chuẩn cho các team.</p>",
        "salaryCurrency":"VND",
        "salaryMax":15000000,
        "salaryMin":10000000,
        "detail":"xây dựng chiến lược, sáng tạo nội dung để phát triển hệ thống social (facebook – fanpage/group, website, youtube, …)quản lý, điều phối các hoạt động tương tác trên hệ thống social.báo cáo, phân tích báo cáo theo campaign/tuần/tháng để đánh giá hiệu quả và có đề xuất phù hợp cho hệ thống online.theo dõi hoạt động của các đối thủ cạnh tranh trên các kênh online.xử lý thông tin xấu, rủi ro từ các kênh online.quản lý và sử dụng hiệu quả content (hình ảnh, video, nội dung bài viết…) trên hệ thống social.chạy các sự kiện online và offline liên quanphối hợp team digital, pr, event trong các chiến dịch truyền thông.xây dựng kế hoạch quảng bá các kênh online của công ty trên các kênh social mediaxây dựng và duy trì mối quan hệ với các cộng đồng mạng (facebook, forums…)hối hợp cùng team lên ý tưởng, nội dung, hình ảnh cho chương trình, sự kiện (bao gồm tvc, pr, maquette báo, banner website, mobile, frame...)ứng viên có kinh nghiệm về marketing online, facebook, các diễn đàn, social media, fan page, youtube, seo, ...có kinh nghiệm về quản lý các kênh social media cho nhãn hàng là lợi thế lớn. tốt nghiệp chuyên ngành mkt, qtkd hoặc các chuyên ngành liên quan.ưu tiên có kiến thức chuyên môn về thị trường bđs.am hiểu và thành thạo về các công cụ và phương thức marketing  online.có sự hiểu biết về các hoạt động, phong trào của giới trẻ, showbizcó kiến thức về vật liệu thi công trong sự kiệncó kiến thức về các hoạt động tạo thị trường nhằm thu hút khách hànglaptopchế độ bảo hiểmdu lịchphụ cấpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "salary":"15 tr vnd - $ 10 tr || VND",
        "R_email":"abc@mailinator.com",
        "R_name":"",
        "R_phone":"0904293898",
        "locationId":79,
        "updateBy":"tuyendung@test2-thangloigroup.vn",
        "tags": "Free text",
        "source":"OTHER"
      }
      """
    Then The response status should be: 200
      And The success should be: False
      And The status in json should be: 400
      And The message should be: "organizationId: This field may not be blank."
      And The data should be null


  Scenario: Posting a duplicated job with "position: This field may not be blank."
    Given Login as Admin  user
    When The POST request with uri "ai/api/v1/jobs/" and payload bellow is sent.
      """
      {
        "organizationId":"874887a8-1382-11eb-bf91-06e30fa7d384",
        "position":"MMA new test live 6",
        "organizationSize":"Medium",
        "jobType": "123123sad",
        "expirationDate":"23/10/2020",
        "organizationName": "Leo Corp. Industries",
        "benefit":"laptopchế độ bảo hiểmdu lịchphụ cẦpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "description":"<p>•Đề xuất, đưa ra quy trình phát triển (development process) sản phẩm phù hợp với yêu cầu cụ thể của từng dự án.</p><p>•Đưa ra những tài liệu, biểu mẫu, hướng dẫn để đảm bảo chất lượng của sản phẩm cho tất cả các bộ phận trong nhóm phát triển sản phẩm.</p><p>•Lên kế hoạch test, thiết kế test case, test script.</p><p>•Thực thi theo test plan, test case.</p><p>•Thu thập thông tin, gửi báo cáo chất lượng cho khách hàng hoặc project manager.</p><p>•Kiểm tra, audit việc thực thi quy trình của các bộ phận trong nhóm làm sản phẩm có đúng quy trình QA đã đề ra không.</p><p>•Nhắc nhở đội ngũ phát triển sản phẩm việc tuân thủ theo quy trình làm việc đã đưa ra.</p><p>•Điều chỉnh, thay đổi quy trình phù hợp với từng sản phẩm mà các team đang thực hiện</p>",
        "industryId":19,
        "languageId":1,
        "levelId":"f6af5757-09b9-4e92-897a-d232d352bdf0",
        "link":"https://www.linkedin.com/jobs/view/software-project-manager-with-joining-bonus-embedded-automotive-at-robert-bosch-engineering-and-business-solutions-vietnam-1855139173/?refId=216cb9b7-1df6-40e9-ae51-5a3f00f5e53d&trk=public_jobs_topcard_title&originalSubdomain=vn&cx=151234e566665e54326381",
        "quantity":1.0,
        "organizationIndustryId": "112233",
        "requirement":"<p>•Khả năng tổ chức, tư duy logic và có hệ thống.</p><p>•Kỹ năng phân tích làm việc trên số liệu tốt.</p><p>•Tốt nghiệp Đại học chuyên ngành Khoa học máy tính, Kỹ thuật hoặc các ngành liên quan</p><p>•Kiến thức tổng quan về test: định nghĩa cơ bản, các thuật ngữ, quy trình phát triển phần mềm, quy trình test</p><p>•Có kinh nghiệm về xây dựng quy trình hoặc là QA Fsoft. Có kinh nghiệm ISO20K, AMS, ITIL là lợi thế</p><p>•Có kỹ năng sử dụng các tool test tải, test crash giao diện</p><p>•Có kiến thức căn bản về máy tính, tin học văn phòng căn bản, cài đặt phần mềm, sử dụng internet</p><p>•Biết sử dụng các công cụ bug tracking</p><p>•Có kiến thức về lập trình: Căn bản SQL, HTML, CSS</p><p>•Hiểu rõ về các chứng chỉ CMMI, ISO… trong phần mềm để xây dựng các quy trình chuẩn cho các team.</p>",
        "salaryCurrency":"VND",
        "salaryMax":15000000,
        "salaryMin":10000000,
        "detail":"xây dựng chiến lược, sáng tạo nội dung để phát triển hệ thống social (facebook – fanpage/group, website, youtube, …)quản lý, điều phối các hoạt động tương tác trên hệ thống social.báo cáo, phân tích báo cáo theo campaign/tuần/tháng để đánh giá hiệu quả và có đề xuất phù hợp cho hệ thống online.theo dõi hoạt động của các đối thủ cạnh tranh trên các kênh online.xử lý thông tin xấu, rủi ro từ các kênh online.quản lý và sử dụng hiệu quả content (hình ảnh, video, nội dung bài viết…) trên hệ thống social.chạy các sự kiện online và offline liên quanphối hợp team digital, pr, event trong các chiến dịch truyền thông.xây dựng kế hoạch quảng bá các kênh online của công ty trên các kênh social mediaxây dựng và duy trì mối quan hệ với các cộng đồng mạng (facebook, forums…)hối hợp cùng team lên ý tưởng, nội dung, hình ảnh cho chương trình, sự kiện (bao gồm tvc, pr, maquette báo, banner website, mobile, frame...)ứng viên có kinh nghiệm về marketing online, facebook, các diễn đàn, social media, fan page, youtube, seo, ...có kinh nghiệm về quản lý các kênh social media cho nhãn hàng là lợi thế lớn. tốt nghiệp chuyên ngành mkt, qtkd hoặc các chuyên ngành liên quan.ưu tiên có kiến thức chuyên môn về thị trường bđs.am hiểu và thành thạo về các công cụ và phương thức marketing  online.có sự hiểu biết về các hoạt động, phong trào của giới trẻ, showbizcó kiến thức về vật liệu thi công trong sự kiệncó kiến thức về các hoạt động tạo thị trường nhằm thu hút khách hànglaptopchế độ bảo hiểmdu lịchphụ cấpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "salary":"15 tr vnd - $ 10 tr || VND",
        "R_email":"abc@mailinator.com",
        "R_name":"",
        "R_phone":"0904293898",
        "locationId":79,
        "updateBy":"tuyendung@test2-thangloigroup.vn",
        "tags": "Free text",
        "source":"OTHER"
      }
      """
    Then The response status should be: 200
      And The success should be: False
      And The status in json should be: 400
      And The message should be: "position: This field may not be blank."
      And The data should be null


  Scenario: Posting a duplicated job with "JOB_LINK_ALREADY_EXISTS"
    Given Login as Admin  user
    When The POST request with uri "ai/api/v1/jobs/" and payload bellow is sent.
      """
      {
        "organizationId":"874887a8-1382-11eb-bf91-06e30fa7d384",
        "position":"MMA new test live 6",
        "organizationSize":"Medium",
        "jobType": "123123sad",
        "expirationDate":"23/10/2020",
        "organizationName": "Leo Corp. Industries",
        "benefit":"laptopchế độ bảo hiểmdu lịchphụ cẦpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "description":"<p>•Đề xuất, đưa ra quy trình phát triển (development process) sản phẩm phù hợp với yêu cầu cụ thể của từng dự án.</p><p>•Đưa ra những tài liệu, biểu mẫu, hướng dẫn để đảm bảo chất lượng của sản phẩm cho tất cả các bộ phận trong nhóm phát triển sản phẩm.</p><p>•Lên kế hoạch test, thiết kế test case, test script.</p><p>•Thực thi theo test plan, test case.</p><p>•Thu thập thông tin, gửi báo cáo chất lượng cho khách hàng hoặc project manager.</p><p>•Kiểm tra, audit việc thực thi quy trình của các bộ phận trong nhóm làm sản phẩm có đúng quy trình QA đã đề ra không.</p><p>•Nhắc nhở đội ngũ phát triển sản phẩm việc tuân thủ theo quy trình làm việc đã đưa ra.</p><p>•Điều chỉnh, thay đổi quy trình phù hợp với từng sản phẩm mà các team đang thực hiện</p>",
        "industryId":19,
        "languageId":1,
        "levelId":"f6af5757-09b9-4e92-897a-d232d352bdf0",
        "link":"https://www.linkedin.com/jobs/view/software-project-manager-with-joining-bonus-embedded-automotive-at-robert-bosch-engineering-and-business-solutions-vietnam-1855139173/?refId=216cb9b7-1df6-40e9-ae51-5a3f00f5e53d&trk=public_jobs_topcard_title&originalSubdomain=vn&cx=151234e566665e54326381",
        "quantity":1.0,
        "organizationIndustryId": "112233",
        "requirement":"<p>•Khả năng tổ chức, tư duy logic và có hệ thống.</p><p>•Kỹ năng phân tích làm việc trên số liệu tốt.</p><p>•Tốt nghiệp Đại học chuyên ngành Khoa học máy tính, Kỹ thuật hoặc các ngành liên quan</p><p>•Kiến thức tổng quan về test: định nghĩa cơ bản, các thuật ngữ, quy trình phát triển phần mềm, quy trình test</p><p>•Có kinh nghiệm về xây dựng quy trình hoặc là QA Fsoft. Có kinh nghiệm ISO20K, AMS, ITIL là lợi thế</p><p>•Có kỹ năng sử dụng các tool test tải, test crash giao diện</p><p>•Có kiến thức căn bản về máy tính, tin học văn phòng căn bản, cài đặt phần mềm, sử dụng internet</p><p>•Biết sử dụng các công cụ bug tracking</p><p>•Có kiến thức về lập trình: Căn bản SQL, HTML, CSS</p><p>•Hiểu rõ về các chứng chỉ CMMI, ISO… trong phần mềm để xây dựng các quy trình chuẩn cho các team.</p>",
        "salaryCurrency":"VND",
        "salaryMax":15000000,
        "salaryMin":10000000,
        "detail":"xây dựng chiến lược, sáng tạo nội dung để phát triển hệ thống social (facebook – fanpage/group, website, youtube, …)quản lý, điều phối các hoạt động tương tác trên hệ thống social.báo cáo, phân tích báo cáo theo campaign/tuần/tháng để đánh giá hiệu quả và có đề xuất phù hợp cho hệ thống online.theo dõi hoạt động của các đối thủ cạnh tranh trên các kênh online.xử lý thông tin xấu, rủi ro từ các kênh online.quản lý và sử dụng hiệu quả content (hình ảnh, video, nội dung bài viết…) trên hệ thống social.chạy các sự kiện online và offline liên quanphối hợp team digital, pr, event trong các chiến dịch truyền thông.xây dựng kế hoạch quảng bá các kênh online của công ty trên các kênh social mediaxây dựng và duy trì mối quan hệ với các cộng đồng mạng (facebook, forums…)hối hợp cùng team lên ý tưởng, nội dung, hình ảnh cho chương trình, sự kiện (bao gồm tvc, pr, maquette báo, banner website, mobile, frame...)ứng viên có kinh nghiệm về marketing online, facebook, các diễn đàn, social media, fan page, youtube, seo, ...có kinh nghiệm về quản lý các kênh social media cho nhãn hàng là lợi thế lớn. tốt nghiệp chuyên ngành mkt, qtkd hoặc các chuyên ngành liên quan.ưu tiên có kiến thức chuyên môn về thị trường bđs.am hiểu và thành thạo về các công cụ và phương thức marketing  online.có sự hiểu biết về các hoạt động, phong trào của giới trẻ, showbizcó kiến thức về vật liệu thi công trong sự kiệncó kiến thức về các hoạt động tạo thị trường nhằm thu hút khách hànglaptopchế độ bảo hiểmdu lịchphụ cấpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "salary":"15 tr vnd - $ 10 tr || VND",
        "R_email":"tien1@mailinator.com",
        "R_name":"Tien Owner",
        "R_phone":"0904293898",
        "locationId":79,
        "updateBy":"tuyendung@test2-thangloigroup.vn",
        "tags": "Free text",
        "source":"OTHER"
      }
      """
    Then The response status should be: 200
      And The success should be: False
      And The status in json should be: 400
      And The message should be: "JOB_LINK_ALREADY_EXISTS"
      And The data should be null

  Scenario: Posting a duplicated job with "R_email: This field may not be blank."
    Given Login as Admin  user
    When The POST request with uri "ai/api/v1/jobs/" and payload bellow is sent.
      """
      {
        "organizationId":"874887a8-1382-11eb-bf91-06e30fa7d384",
        "position":"MMA new test live 6",
        "organizationSize":"Medium",
        "jobType": "123123sad",
        "expirationDate":"23/10/2020",
        "organizationName": "Leo Corp. Industries",
        "benefit":"laptopchế độ bảo hiểmdu lịchphụ cẦpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "description":"<p>•Đề xuất, đưa ra quy trình phát triển (development process) sản phẩm phù hợp với yêu cầu cụ thể của từng dự án.</p><p>•Đưa ra những tài liệu, biểu mẫu, hướng dẫn để đảm bảo chất lượng của sản phẩm cho tất cả các bộ phận trong nhóm phát triển sản phẩm.</p><p>•Lên kế hoạch test, thiết kế test case, test script.</p><p>•Thực thi theo test plan, test case.</p><p>•Thu thập thông tin, gửi báo cáo chất lượng cho khách hàng hoặc project manager.</p><p>•Kiểm tra, audit việc thực thi quy trình của các bộ phận trong nhóm làm sản phẩm có đúng quy trình QA đã đề ra không.</p><p>•Nhắc nhở đội ngũ phát triển sản phẩm việc tuân thủ theo quy trình làm việc đã đưa ra.</p><p>•Điều chỉnh, thay đổi quy trình phù hợp với từng sản phẩm mà các team đang thực hiện</p>",
        "industryId":19,
        "languageId":1,
        "levelId":"f6af5757-09b9-4e92-897a-d232d352bdf0",
        "link":"https://www.linkedin.com/jobs/view/software-project-manager-with-joining-bonus-embedded-automotive-at-robert-bosch-engineering-and-business-solutions-vietnam-1855139173/?refId=216cb9b7-1df6-40e9-ae51-5a3f00f5e53d&trk=public_jobs_topcard_title&originalSubdomain=vn&cx=151234e566665e54326381",
        "quantity":1.0,
        "organizationIndustryId": "112233",
        "requirement":"<p>•Khả năng tổ chức, tư duy logic và có hệ thống.</p><p>•Kỹ năng phân tích làm việc trên số liệu tốt.</p><p>•Tốt nghiệp Đại học chuyên ngành Khoa học máy tính, Kỹ thuật hoặc các ngành liên quan</p><p>•Kiến thức tổng quan về test: định nghĩa cơ bản, các thuật ngữ, quy trình phát triển phần mềm, quy trình test</p><p>•Có kinh nghiệm về xây dựng quy trình hoặc là QA Fsoft. Có kinh nghiệm ISO20K, AMS, ITIL là lợi thế</p><p>•Có kỹ năng sử dụng các tool test tải, test crash giao diện</p><p>•Có kiến thức căn bản về máy tính, tin học văn phòng căn bản, cài đặt phần mềm, sử dụng internet</p><p>•Biết sử dụng các công cụ bug tracking</p><p>•Có kiến thức về lập trình: Căn bản SQL, HTML, CSS</p><p>•Hiểu rõ về các chứng chỉ CMMI, ISO… trong phần mềm để xây dựng các quy trình chuẩn cho các team.</p>",
        "salaryCurrency":"VND",
        "salaryMax":15000000,
        "salaryMin":10000000,
        "detail":"xây dựng chiến lược, sáng tạo nội dung để phát triển hệ thống social (facebook – fanpage/group, website, youtube, …)quản lý, điều phối các hoạt động tương tác trên hệ thống social.báo cáo, phân tích báo cáo theo campaign/tuần/tháng để đánh giá hiệu quả và có đề xuất phù hợp cho hệ thống online.theo dõi hoạt động của các đối thủ cạnh tranh trên các kênh online.xử lý thông tin xấu, rủi ro từ các kênh online.quản lý và sử dụng hiệu quả content (hình ảnh, video, nội dung bài viết…) trên hệ thống social.chạy các sự kiện online và offline liên quanphối hợp team digital, pr, event trong các chiến dịch truyền thông.xây dựng kế hoạch quảng bá các kênh online của công ty trên các kênh social mediaxây dựng và duy trì mối quan hệ với các cộng đồng mạng (facebook, forums…)hối hợp cùng team lên ý tưởng, nội dung, hình ảnh cho chương trình, sự kiện (bao gồm tvc, pr, maquette báo, banner website, mobile, frame...)ứng viên có kinh nghiệm về marketing online, facebook, các diễn đàn, social media, fan page, youtube, seo, ...có kinh nghiệm về quản lý các kênh social media cho nhãn hàng là lợi thế lớn. tốt nghiệp chuyên ngành mkt, qtkd hoặc các chuyên ngành liên quan.ưu tiên có kiến thức chuyên môn về thị trường bđs.am hiểu và thành thạo về các công cụ và phương thức marketing  online.có sự hiểu biết về các hoạt động, phong trào của giới trẻ, showbizcó kiến thức về vật liệu thi công trong sự kiệncó kiến thức về các hoạt động tạo thị trường nhằm thu hút khách hànglaptopchế độ bảo hiểmdu lịchphụ cấpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "salary":"15 tr vnd - $ 10 tr || VND",
        "R_email":"",
        "R_name":"Tien Owner",
        "R_phone":"0904293898",
        "locationId":79,
        "updateBy":"tuyendung@test2-thangloigroup.vn",
        "tags": "Free text",
        "source":"OTHER"
      }
      """
    Then The response status should be: 200
      And The success should be: False
      And The status in json should be: 400
      And The message should be: "R_email: This field may not be blank."
      And The data should be null


  Scenario: Posting a duplicated job with "R_name: This field may not be blank."
    Given Login as Admin  user
    When The POST request with uri "ai/api/v1/jobs/" and payload bellow is sent.
      """
      {
        "organizationId":"874887a8-1382-11eb-bf91-06e30fa7d384",
        "position":"MMA new test live 6",
        "organizationSize":"Medium",
        "jobType": "123123sad",
        "expirationDate":"23/10/2020",
        "organizationName": "Leo Corp. Industries",
        "benefit":"laptopchế độ bảo hiểmdu lịchphụ cẦpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "description":"<p>•Đề xuất, đưa ra quy trình phát triển (development process) sản phẩm phù hợp với yêu cầu cụ thể của từng dự án.</p><p>•Đưa ra những tài liệu, biểu mẫu, hướng dẫn để đảm bảo chất lượng của sản phẩm cho tất cả các bộ phận trong nhóm phát triển sản phẩm.</p><p>•Lên kế hoạch test, thiết kế test case, test script.</p><p>•Thực thi theo test plan, test case.</p><p>•Thu thập thông tin, gửi báo cáo chất lượng cho khách hàng hoặc project manager.</p><p>•Kiểm tra, audit việc thực thi quy trình của các bộ phận trong nhóm làm sản phẩm có đúng quy trình QA đã đề ra không.</p><p>•Nhắc nhở đội ngũ phát triển sản phẩm việc tuân thủ theo quy trình làm việc đã đưa ra.</p><p>•Điều chỉnh, thay đổi quy trình phù hợp với từng sản phẩm mà các team đang thực hiện</p>",
        "industryId":19,
        "languageId":1,
        "levelId":"f6af5757-09b9-4e92-897a-d232d352bdf0",
        "link":"https://www.linkedin.com/jobs/view/software-project-manager-with-joining-bonus-embedded-automotive-at-robert-bosch-engineering-and-business-solutions-vietnam-1855139173/?refId=216cb9b7-1df6-40e9-ae51-5a3f00f5e53d&trk=public_jobs_topcard_title&originalSubdomain=vn&cx=151234e566665e54326381",
        "quantity":1.0,
        "organizationIndustryId": "112233",
        "requirement":"<p>•Khả năng tổ chức, tư duy logic và có hệ thống.</p><p>•Kỹ năng phân tích làm việc trên số liệu tốt.</p><p>•Tốt nghiệp Đại học chuyên ngành Khoa học máy tính, Kỹ thuật hoặc các ngành liên quan</p><p>•Kiến thức tổng quan về test: định nghĩa cơ bản, các thuật ngữ, quy trình phát triển phần mềm, quy trình test</p><p>•Có kinh nghiệm về xây dựng quy trình hoặc là QA Fsoft. Có kinh nghiệm ISO20K, AMS, ITIL là lợi thế</p><p>•Có kỹ năng sử dụng các tool test tải, test crash giao diện</p><p>•Có kiến thức căn bản về máy tính, tin học văn phòng căn bản, cài đặt phần mềm, sử dụng internet</p><p>•Biết sử dụng các công cụ bug tracking</p><p>•Có kiến thức về lập trình: Căn bản SQL, HTML, CSS</p><p>•Hiểu rõ về các chứng chỉ CMMI, ISO… trong phần mềm để xây dựng các quy trình chuẩn cho các team.</p>",
        "salaryCurrency":"VND",
        "salaryMax":15000000,
        "salaryMin":10000000,
        "detail":"xây dựng chiến lược, sáng tạo nội dung để phát triển hệ thống social (facebook – fanpage/group, website, youtube, …)quản lý, điều phối các hoạt động tương tác trên hệ thống social.báo cáo, phân tích báo cáo theo campaign/tuần/tháng để đánh giá hiệu quả và có đề xuất phù hợp cho hệ thống online.theo dõi hoạt động của các đối thủ cạnh tranh trên các kênh online.xử lý thông tin xấu, rủi ro từ các kênh online.quản lý và sử dụng hiệu quả content (hình ảnh, video, nội dung bài viết…) trên hệ thống social.chạy các sự kiện online và offline liên quanphối hợp team digital, pr, event trong các chiến dịch truyền thông.xây dựng kế hoạch quảng bá các kênh online của công ty trên các kênh social mediaxây dựng và duy trì mối quan hệ với các cộng đồng mạng (facebook, forums…)hối hợp cùng team lên ý tưởng, nội dung, hình ảnh cho chương trình, sự kiện (bao gồm tvc, pr, maquette báo, banner website, mobile, frame...)ứng viên có kinh nghiệm về marketing online, facebook, các diễn đàn, social media, fan page, youtube, seo, ...có kinh nghiệm về quản lý các kênh social media cho nhãn hàng là lợi thế lớn. tốt nghiệp chuyên ngành mkt, qtkd hoặc các chuyên ngành liên quan.ưu tiên có kiến thức chuyên môn về thị trường bđs.am hiểu và thành thạo về các công cụ và phương thức marketing  online.có sự hiểu biết về các hoạt động, phong trào của giới trẻ, showbizcó kiến thức về vật liệu thi công trong sự kiệncó kiến thức về các hoạt động tạo thị trường nhằm thu hút khách hànglaptopchế độ bảo hiểmdu lịchphụ cấpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "salary":"15 tr vnd - $ 10 tr || VND",
        "R_email":"abc@mailinator.com",
        "R_name":"",
        "R_phone":"0904293898",
        "locationId":79,
        "updateBy":"tuyendung@test2-thangloigroup.vn",
        "tags": "Free text",
        "source":"OTHER"
      }
      """
    Then The response status should be: 200
      And The success should be: False
      And The status in json should be: 400
      And The message should be: "R_name: This field may not be blank."
      And The data should be null


  Scenario: Posting a duplicated job with "R_phone: This field may not be blank."
    Given Login as Admin  user
    When The POST request with uri "ai/api/v1/jobs/" and payload bellow is sent.
      """
      {
        "organizationId":"874887a8-1382-11eb-bf91-06e30fa7d384",
        "position":"MMA new test live 6",
        "organizationSize":"Medium",
        "jobType": "123123sad",
        "expirationDate":"23/10/2020",
        "organizationName": "Leo Corp. Industries",
        "benefit":"laptopchế độ bảo hiểmdu lịchphụ cẦpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "description":"<p>•Đề xuất, đưa ra quy trình phát triển (development process) sản phẩm phù hợp với yêu cầu cụ thể của từng dự án.</p><p>•Đưa ra những tài liệu, biểu mẫu, hướng dẫn để đảm bảo chất lượng của sản phẩm cho tất cả các bộ phận trong nhóm phát triển sản phẩm.</p><p>•Lên kế hoạch test, thiết kế test case, test script.</p><p>•Thực thi theo test plan, test case.</p><p>•Thu thập thông tin, gửi báo cáo chất lượng cho khách hàng hoặc project manager.</p><p>•Kiểm tra, audit việc thực thi quy trình của các bộ phận trong nhóm làm sản phẩm có đúng quy trình QA đã đề ra không.</p><p>•Nhắc nhở đội ngũ phát triển sản phẩm việc tuân thủ theo quy trình làm việc đã đưa ra.</p><p>•Điều chỉnh, thay đổi quy trình phù hợp với từng sản phẩm mà các team đang thực hiện</p>",
        "industryId":19,
        "languageId":1,
        "levelId":"f6af5757-09b9-4e92-897a-d232d352bdf0",
        "link":"https://www.linkedin.com/jobs/view/software-project-manager-with-joining-bonus-embedded-automotive-at-robert-bosch-engineering-and-business-solutions-vietnam-1855139173/?refId=216cb9b7-1df6-40e9-ae51-5a3f00f5e53d&trk=public_jobs_topcard_title&originalSubdomain=vn&cx=151234e566665e54326381",
        "quantity":1.0,
        "organizationIndustryId": "112233",
        "requirement":"<p>•Khả năng tổ chức, tư duy logic và có hệ thống.</p><p>•Kỹ năng phân tích làm việc trên số liệu tốt.</p><p>•Tốt nghiệp Đại học chuyên ngành Khoa học máy tính, Kỹ thuật hoặc các ngành liên quan</p><p>•Kiến thức tổng quan về test: định nghĩa cơ bản, các thuật ngữ, quy trình phát triển phần mềm, quy trình test</p><p>•Có kinh nghiệm về xây dựng quy trình hoặc là QA Fsoft. Có kinh nghiệm ISO20K, AMS, ITIL là lợi thế</p><p>•Có kỹ năng sử dụng các tool test tải, test crash giao diện</p><p>•Có kiến thức căn bản về máy tính, tin học văn phòng căn bản, cài đặt phần mềm, sử dụng internet</p><p>•Biết sử dụng các công cụ bug tracking</p><p>•Có kiến thức về lập trình: Căn bản SQL, HTML, CSS</p><p>•Hiểu rõ về các chứng chỉ CMMI, ISO… trong phần mềm để xây dựng các quy trình chuẩn cho các team.</p>",
        "salaryCurrency":"VND",
        "salaryMax":15000000,
        "salaryMin":10000000,
        "detail":"xây dựng chiến lược, sáng tạo nội dung để phát triển hệ thống social (facebook – fanpage/group, website, youtube, …)quản lý, điều phối các hoạt động tương tác trên hệ thống social.báo cáo, phân tích báo cáo theo campaign/tuần/tháng để đánh giá hiệu quả và có đề xuất phù hợp cho hệ thống online.theo dõi hoạt động của các đối thủ cạnh tranh trên các kênh online.xử lý thông tin xấu, rủi ro từ các kênh online.quản lý và sử dụng hiệu quả content (hình ảnh, video, nội dung bài viết…) trên hệ thống social.chạy các sự kiện online và offline liên quanphối hợp team digital, pr, event trong các chiến dịch truyền thông.xây dựng kế hoạch quảng bá các kênh online của công ty trên các kênh social mediaxây dựng và duy trì mối quan hệ với các cộng đồng mạng (facebook, forums…)hối hợp cùng team lên ý tưởng, nội dung, hình ảnh cho chương trình, sự kiện (bao gồm tvc, pr, maquette báo, banner website, mobile, frame...)ứng viên có kinh nghiệm về marketing online, facebook, các diễn đàn, social media, fan page, youtube, seo, ...có kinh nghiệm về quản lý các kênh social media cho nhãn hàng là lợi thế lớn. tốt nghiệp chuyên ngành mkt, qtkd hoặc các chuyên ngành liên quan.ưu tiên có kiến thức chuyên môn về thị trường bđs.am hiểu và thành thạo về các công cụ và phương thức marketing  online.có sự hiểu biết về các hoạt động, phong trào của giới trẻ, showbizcó kiến thức về vật liệu thi công trong sự kiệncó kiến thức về các hoạt động tạo thị trường nhằm thu hút khách hànglaptopchế độ bảo hiểmdu lịchphụ cấpdu lịch nước ngoàiđồng phụcchế độ thưởngchăm sóc sức khỏeđào tạotăng lươngcông tác phíphụ cấp thâm niênnghỉ phép năm",
        "salary":"15 tr vnd - $ 10 tr || VND",
        "R_email":"abc@mailinator.com",
        "R_name":"",
        "R_phone":"0904293898",
        "locationId":79,
        "updateBy":"tuyendung@test2-thangloigroup.vn",
        "tags": "Free text",
        "source":"OTHER"
      }
      """
    Then The response status should be: 200
      And The success should be: False
      And The status in json should be: 400
      And The message should be: "R_phone: This field may not be blank."
      And The data should be null