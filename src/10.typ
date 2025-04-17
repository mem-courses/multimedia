#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://www.baidu.com",
    "Lecture 10. MPEG Video Coding",
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
  page-margin: (left: 16mm, right: 16mm, top: 4mm, bottom: 12mm),
  show-header: false,
)

#slide-width.update(x => 976)
#slide-height.update(x => 670)

#slide2x([2], image("../public/merged-10/0002.jpg"), image("../public/translated-10/0002.jpg"), cb: 19)

#slide2x([3], image("../public/merged-10/0003.jpg"), image("../public/translated-10/0003.jpg"), cb: 16)

= MPEG-1

#slide2x([5], image("../public/merged-10/0005.jpg"), image("../public/translated-10/0005.jpg"), cb: 4)

- MPEG-1 使用 4:2:0 的色彩下采样模式。

#slide2x([6], image("../public/merged-10/0006.jpg"), image("../public/translated-10/0006.jpg"), cb: 3)

#slide2x([7], image("../public/merged-10/0007.jpg"), image("../public/translated-10/0007.jpg"), header: false, ct: 2, cb: 5)

- *双向搜索(bidirectional search)*：允许从下一帧中进行运动矢量搜索。允许双向搜索的帧称为 *B 帧(B-frame)*。
  - B 帧需要依赖后面的 #mark[I 帧或 P 帧]，因此#mark[帧的编码顺序与显示顺序并不相同]。

#no-par-margin
#align(center, image("images/2025-04-17-13-28-33.png", width: 50%))

#slide2x([8], image("../public/merged-10/0008.jpg"), image("../public/translated-10/0008.jpg"), header: false, ct: 2, cb: 1)

#slide2x([9], image("../public/merged-10/0009.jpg"), image("../public/translated-10/0009.jpg"), header: false, cb: 6)

#slide2x([10], image("../public/merged-10/0010.jpg"), image("../public/translated-10/0010.jpg"), header: false, cb: 4)

#slide2x([12], image("../public/merged-10/0012.jpg"), image("../public/translated-10/0012.jpg"), header: false, ct: 6, cb: 2)

#slide2x([13], image("../public/merged-10/0013.jpg"), image("../public/translated-10/0013.jpg"), cb: 11)

#slide2x([14], image("../public/merged-10/0014.jpg"), image("../public/translated-10/0014.jpg"), cb: 29, ct: 2, header: false)

#slide2x([15], image("../public/merged-10/0015.jpg"), image("../public/translated-10/0015.jpg"), header: false, ct: 3, cb: 2)

- MPEG-1 可以把相邻的宏块合并成一个 *片(slice)*，一个片中可以共享相同的#mark[量化参数]（即下面的量化矩阵），片中的每个宏块仍然独立编码。
  - 能有更好的错误恢复能力，不同片之间的编解码是独立进行的。

#slide2x([16], image("../public/merged-10/0016.jpg"), image("../public/translated-10/0016.jpg"), header: false, ct: 2, cb: 7)

- MPEG-1 使用量化矩阵进行量化。

#slide2x([17], image("../public/merged-10/0017.jpg"), image("../public/translated-10/0017.jpg"), header: false, ct: 3, cb: 5)

- 不同帧的宏块的量化矩阵可能不同。

#slide2x([18], image("../public/merged-10/0018.jpg"), image("../public/translated-10/0018.jpg"), header: false, ct: 5, cb: 9)

#slide2x([19], image("../public/merged-10/0019.jpg"), image("../public/translated-10/0019.jpg"), header: false, ct: 2, cb: 5)

#slide2x([20], image("../public/merged-10/0020.jpg"), image("../public/translated-10/0020.jpg"))

#slide2x([21], image("../public/merged-10/0021.jpg"), image("../public/translated-10/0021.jpg"), header: false, ct: 5, cb: 3)

= MPEG-2

#slide2x([23], image("../public/merged-10/0023.jpg"), image("../public/translated-10/0023.jpg"), crop: 0.92)

#slide2x([24], image("../public/merged-10/0024.jpg"), image("../public/translated-10/0024.jpg"), header: false)

#slide2x([25], image("../public/merged-10/0025.jpg"), image("../public/translated-10/0025.jpg"))

#slide2x([26], image("../public/merged-10/0026.jpg"), image("../public/translated-10/0026.jpg"), header: false)

#slide2x([27], image("../public/merged-10/0027.jpg"), image("../public/translated-10/0027.jpg"), crop: 0.91, header: false)

#slide2x([28], image("../public/merged-10/0028.jpg"), image("../public/translated-10/0028.jpg"), crop: 0.92, header: false)

#slide2x([29], image("../public/merged-10/0029.jpg"), image("../public/translated-10/0029.jpg"), header: false)

#slide2x([30], image("../public/merged-10/0030.jpg"), image("../public/translated-10/0030.jpg"))

#slide2x([31], image("../public/merged-10/0031.jpg"), image("../public/translated-10/0031.jpg"))

#slide2x([32], image("../public/merged-10/0032.jpg"), image("../public/translated-10/0032.jpg"), header: false)

#slide2x([33], image("../public/merged-10/0033.jpg"), image("../public/translated-10/0033.jpg"), header: false)

#slide2x([34], image("../public/merged-10/0034.jpg"), image("../public/translated-10/0034.jpg"), crop: 0.92, header: false)

#slide2x([35], image("../public/merged-10/0035.jpg"), image("../public/translated-10/0035.jpg"), header: false)

#slide2x([36], image("../public/merged-10/0036.jpg"), image("../public/translated-10/0036.jpg"), header: false)

#slide2x([37], image("../public/merged-10/0037.jpg"), image("../public/translated-10/0037.jpg"), header: false)

#slide2x([38], image("../public/merged-10/0038.jpg"), image("../public/translated-10/0038.jpg"), header: false)

#slide2x([39], image("../public/merged-10/0039.jpg"), image("../public/translated-10/0039.jpg"), header: false)

#slide2x([40], image("../public/merged-10/0040.jpg"), image("../public/translated-10/0040.jpg"), header: false)

#slide2x([41], image("../public/merged-10/0041.jpg"), image("../public/translated-10/0041.jpg"), header: false)

#slide2x([42], image("../public/merged-10/0042.jpg"), image("../public/translated-10/0042.jpg"), header: false)

#slide2x([43], image("../public/merged-10/0043.jpg"), image("../public/translated-10/0043.jpg"), crop: 0.85, header: false)

#slide2x([44], image("../public/merged-10/0044.jpg"), image("../public/translated-10/0044.jpg"), header: false)

#slide2x([45], image("../public/merged-10/0045.jpg"), image("../public/translated-10/0045.jpg"), header: false)

#slide2x([46], image("../public/merged-10/0046.jpg"), image("../public/translated-10/0046.jpg"), header: false)

#slide2x([47], image("../public/merged-10/0047.jpg"), image("../public/translated-10/0047.jpg"))

#slide2x([48], image("../public/merged-10/0048.jpg"), image("../public/translated-10/0048.jpg"), crop: 0.94, header: false)

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
