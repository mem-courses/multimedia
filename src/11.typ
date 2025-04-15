#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://www.baidu.com",
    "Lecture 11. MPEG-1 Video Coding II",
  ),
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      link: "https://mem.ac/",
    ),
  ),
  semester: "Spring-Summer 2025",
  date: "March 27, 2025",
  page-margin: (left: 16mm, right: 16mm, top: 12mm, bottom: 12mm),
)

#slide-width.update(x => 976)
#slide-height.update(x => 670)

= MPEG-4

#slide2x([4], image("../public/merged-11/0004.jpg"), image("../public/translated-11/0004.jpg"))

#slide2x([5], image("../public/merged-11/0005.jpg"), image("../public/translated-11/0005.jpg"))

#slide2x([6], image("../public/merged-11/0006.jpg"), image("../public/translated-11/0006.jpg"), cb: 0.01)

#slide2x([7], image("../public/merged-11/0007.jpg"), image("../public/translated-11/0007.jpg"), cb: 0.10)

#slide2x([8], image("../public/merged-11/0008.jpg"), image("../public/translated-11/0008.jpg"))

#slide2x([9], image("../public/merged-11/0009.jpg"), image("../public/translated-11/0009.jpg"))

#slide2x([10], image("../public/merged-11/0010.jpg"), image("../public/translated-11/0010.jpg"))

#slide2x([11], image("../public/merged-11/0011.jpg"), image("../public/translated-11/0011.jpg"), cb: 0.01)

#slide2x([12], image("../public/merged-11/0012.jpg"), image("../public/translated-11/0012.jpg"), cb: 0.24)

#slide2x([13], image("../public/merged-11/0013.jpg"), image("../public/translated-11/0013.jpg"))

#slide2x([14], image("../public/merged-11/0014.jpg"), image("../public/translated-11/0014.jpg"), cb: 0.19)

#slide2x([15], image("../public/merged-11/0015.jpg"), image("../public/translated-11/0015.jpg"), cb: 0.15)

#slide2x([16], image("../public/merged-11/0016.jpg"), image("../public/translated-11/0016.jpg"), cb: 0.01)

#slide2x([17], image("../public/merged-11/0017.jpg"), image("../public/translated-11/0017.jpg"), cb: 0.07)

#slide2x([18], image("../public/merged-11/0018.jpg"), image("../public/translated-11/0018.jpg"), cb: 0.03)

#slide2x([19], image("../public/merged-11/0019.jpg"), image("../public/translated-11/0019.jpg"))

#slide2x([20], image("../public/merged-11/0020.jpg"), image("../public/translated-11/0020.jpg"), cb: 0.12)

#slide2x([21], image("../public/merged-11/0021.jpg"), image("../public/translated-11/0021.jpg"), cb: 0.16)

#slide2x([22], image("../public/merged-11/0022.jpg"), image("../public/translated-11/0022.jpg"), cb: 0.03)

#slide2x([23], image("../public/merged-11/0023.jpg"), image("../public/translated-11/0023.jpg"), cb: 0.01)

#slide2x([24], image("../public/merged-11/0024.jpg"), image("../public/translated-11/0024.jpg"))

#slide2x([25], image("../public/merged-11/0025.jpg"), image("../public/translated-11/0025.jpg"))

#slide2x([26], image("../public/merged-11/0026.jpg"), image("../public/translated-11/0026.jpg"), cb: 0.01)

#slide2x([27], image("../public/merged-11/0027.jpg"), image("../public/translated-11/0027.jpg"))

#slide2x([28], image("../public/merged-11/0028.jpg"), image("../public/translated-11/0028.jpg"))

#slide2x([29], image("../public/merged-11/0029.jpg"), image("../public/translated-11/0029.jpg"))

#slide2x([30], image("../public/merged-11/0030.jpg"), image("../public/translated-11/0030.jpg"), cb: 0.04)

#slide2x([31], image("../public/merged-11/0031.jpg"), image("../public/translated-11/0031.jpg"), cb: 0.01)

#slide2x([32], image("../public/merged-11/0032.jpg"), image("../public/translated-11/0032.jpg"), cb: 0.03)

#slide2x([33], image("../public/merged-11/0033.jpg"), image("../public/translated-11/0033.jpg"), cb: 0.01)

#slide2x([34], image("../public/merged-11/0034.jpg"), image("../public/translated-11/0034.jpg"))

#slide2x([35], image("../public/merged-11/0035.jpg"), image("../public/translated-11/0035.jpg"), cb: 0.05)

#slide2x([36], image("../public/merged-11/0036.jpg"), image("../public/translated-11/0036.jpg"), cb: 0.13)

#slide2x([37], image("../public/merged-11/0037.jpg"), image("../public/translated-11/0037.jpg"))

#slide2x([38], image("../public/merged-11/0038.jpg"), image("../public/translated-11/0038.jpg"), cb: 0.15)

#slide2x([39], image("../public/merged-11/0039.jpg"), image("../public/translated-11/0039.jpg"), cb: 0.10)

#slide2x([40], image("../public/merged-11/0040.jpg"), image("../public/translated-11/0040.jpg"))

#slide2x([41], image("../public/merged-11/0041.jpg"), image("../public/translated-11/0041.jpg"), cb: 0.03)

#slide2x([42], image("../public/merged-11/0042.jpg"), image("../public/translated-11/0042.jpg"))

#slide2x([43], image("../public/merged-11/0043.jpg"), image("../public/translated-11/0043.jpg"))

#slide2x([44], image("../public/merged-11/0044.jpg"), image("../public/translated-11/0044.jpg"), cb: 0.01)

#slide2x([45], image("../public/merged-11/0045.jpg"), image("../public/translated-11/0045.jpg"), cb: 0.01)

#slide2x([46], image("../public/merged-11/0046.jpg"), image("../public/translated-11/0046.jpg"))

#slide2x([47], image("../public/merged-11/0047.jpg"), image("../public/translated-11/0047.jpg"))

#slide2x([48], image("../public/merged-11/0048.jpg"), image("../public/translated-11/0048.jpg"))

#slide2x([49], image("../public/merged-11/0049.jpg"), image("../public/translated-11/0049.jpg"), cb: 0.05)

#slide2x([50], image("../public/merged-11/0050.jpg"), image("../public/translated-11/0050.jpg"), cb: 0.07)

#slide2x([51], image("../public/merged-11/0051.jpg"), image("../public/translated-11/0051.jpg"), cb: 0.13)

#slide2x([52], image("../public/merged-11/0052.jpg"), image("../public/translated-11/0052.jpg"), cb: 0.09)

#slide2x([53], image("../public/merged-11/0053.jpg"), image("../public/translated-11/0053.jpg"), cb: 0.03)

#slide2x([54], image("../public/merged-11/0054.jpg"), image("../public/translated-11/0054.jpg"))

= MPEG-7

#slide2x([56], image("../public/merged-11/0056.jpg"), image("../public/translated-11/0056.jpg"), cb: 0.09)

#slide2x([57], image("../public/merged-11/0057.jpg"), image("../public/translated-11/0057.jpg"), cb: 0.15)

#slide2x([58], image("../public/merged-11/0058.jpg"), image("../public/translated-11/0058.jpg"))

= MPEG-21

#slide2x([60], image("../public/merged-11/0060.jpg"), image("../public/translated-11/0060.jpg"), cb: 0.04)
