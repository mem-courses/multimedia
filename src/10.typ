#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://mem.ac/",
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
  date: "March 21, 2025",
  page-margin: (left: 16mm, right: 16mm, top: 4mm, bottom: 12mm),
  show-header: false,
)

#slide-width.update(x => 976)
#slide-height.update(x => 670)

#slide2x([2], image("../public/merged-10/0002.jpg"), image("../public/translated-10/0002.jpg"), cb: 19)

= MPEG-1

#slide2x([5], image("../public/merged-10/0005.jpg"), image("../public/translated-10/0005.jpg"), cb: 4)

- MPEG-1 使用 4:2:0 的色彩下采样模式。

#slide2x([6], image("../public/merged-10/0006.jpg"), image("../public/translated-10/0006.jpg"), cb: 3)

#slide2x([7], image("../public/merged-10/0007.jpg"), image("../public/translated-10/0007.jpg"), header: false, ct: 3, cb: 6)

- MPEG-1 允许 *双向搜索(bidirectional search)*：允许从下一帧中进行运动矢量搜索。允许双向搜索的帧称为 *B 帧(B-frame)*。
  - B 帧需要依赖后面的 #mark[I 帧或 P 帧]，因此#mark[帧的编码顺序与显示顺序并不相同]。

#no-par-margin
#align(center, image("images/2025-04-17-13-28-33.png", width: 50%))

#slide2x([8], image("../public/merged-10/0008.jpg"), image("../public/translated-10/0008.jpg"), header: false, ct: 2, cb: 1)

#slide2x([9], image("../public/merged-10/0009.jpg"), image("../public/translated-10/0009.jpg"), header: false, cb: 6, ct: 2)

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

#slide2x([23], image("../public/merged-10/0023.jpg"), image("../public/translated-10/0023.jpg"), cb: 10)

#slide2x([24], image("../public/merged-10/0024.jpg"), image("../public/translated-10/0024.jpg"), header: false, ct: 2, cb: 2)

#slide2x([25], image("../public/merged-10/0025.jpg"), image("../public/translated-10/0025.jpg"), cb: 2)

- MPEG-2 支持隔行扫描的视频。将每个帧的两个场分别作为帧进行编码。

#no-par-margin
#align(center, figure(image("images/2025-04-17-14-59-16.png", width: 48%), caption: "Field prediction for field-pictures"))

#slide2x([26], image("../public/merged-10/0026.jpg"), image("../public/translated-10/0026.jpg"), header: false)

#slide2x([27], image("../public/merged-10/0027.jpg"), image("../public/translated-10/0027.jpg"), cb: 10, ct: 2, header: false)

- MPEG-2 的五种不同的场图像的预测方式。

#slide2x([29], image("../public/merged-10/0029.jpg"), image("../public/translated-10/0029.jpg"), header: false, ct: 1)

#slide2x([30], image("../public/merged-10/0030.jpg"), image("../public/translated-10/0030.jpg"))

#topic("可伸缩编码", blue)[
  #slide2x([31], image("../public/merged-10/0031.jpg"), image("../public/translated-10/0031.jpg"))

  #slide2x([32], image("../public/merged-10/0032.jpg"), image("../public/translated-10/0032.jpg"), header: false, cb: 3)

  #slide2x([33], image("../public/merged-10/0033.jpg"), image("../public/translated-10/0033.jpg"), header: false, ct: 2, cb: 5)

  - MPEG-2 的 *可伸缩编码(scalable coding)*（也称为 *分层编码(layered coding)*）：允许终端只解码部分层以得到不同质量的视频数据。
    - *基础层(base layer)* 可以独立的进行编码、传输和解码，以获得基本的视频质量；*增强层(enhancement layer)* 的编码和解码依赖于前一个增强层，提供更高的视频质量。解码时可以选择只解码基础层与若干个增强层。
    - MPEG-2 支持五种可伸缩编码，将在下面依次介绍。

  #slide2x([34], image("../public/merged-10/0034.jpg"), image("../public/translated-10/0034.jpg"), header: false, cb: 12, ct: 2)

  #slide2x([35], image("../public/merged-10/0035.jpg"), image("../public/translated-10/0035.jpg"), header: false, ct: 2, cb: 6)

  - 基于 *信噪比可伸缩性(SNR scalability)* 的编码
    - 在基础层使用较粗的量化（使用较大的量化步长）。
    - 对于在基础层中因为较粗量化而损失掉的细节，在增强层进行更细的量化（使用更小的量化步长）。

  #no-par-margin
  #table(
    columns: (1fr, 1fr),
    table.header(
      [*Encoder*],
      [*Decoder*],
    ),

    align(center, image("images/2025-04-17-15-04-45.png", width: 100%)), align(center, image("images/2025-04-17-15-04-51.png", width: 100%)),
  )

  #slide2x([38], image("../public/merged-10/0038.jpg"), image("../public/translated-10/0038.jpg"), header: false)

  - 基于 *空间可伸缩性(spatial scalability)* 的编码
    - 基础层使用下采样的图像进行编码（较低分辨率）。
    - 增强层使用与基础层放大后的差分图像进行编码（逐渐得到较高分辨率）。

  #no-par-margin
  #align(center, image("images/2025-04-17-15-12-43.png", width: 40%))

  #slide2x([40], image("../public/merged-10/0040.jpg"), image("../public/translated-10/0040.jpg"), header: false, ct: 2, cb: 10)

  - 基于 *时间可伸缩性(temporal scalability)* 的编码
    - 基础层使用低帧率的视频流。e.g. $F_0,F_2,F_4,dots.c$
    - 增强层补充缺少的帧。e.g. $F_1,F_3,F_5,dots.c$

  #no-par-margin
  #align(center, image("images/2025-04-17-15-18-59.png", width: 40%))

  #slide2x([42], image("../public/merged-10/0042.jpg"), image("../public/translated-10/0042.jpg"), header: false, cb: 4)

  #slide2x([43], image("../public/merged-10/0043.jpg"), image("../public/translated-10/0043.jpg"), cb: 17, ct: 2, header: false)

  - 基于 *混合可伸缩性(hybrid scalability)* 的编码：前面的三种可伸缩编码可以混合使用。

  #slide2x([44], image("../public/merged-10/0044.jpg"), image("../public/translated-10/0044.jpg"), header: false, cb: 7, ct: 2)

  #slide2x([45], image("../public/merged-10/0045.jpg"), image("../public/translated-10/0045.jpg"), header: false, ct: 3, cb: 3)

  #slide2x([46], image("../public/merged-10/0046.jpg"), image("../public/translated-10/0046.jpg"), header: false, ct: 2, cb: 3)

  - 基于 *数据分割可伸缩性(data partitioning scalability)* 的编码：基础层包括低频 DCT 信号，增强层包括高频 DCT 信号。
]

#slide2x([47], image("../public/merged-10/0047.jpg"), image("../public/translated-10/0047.jpg"), cb: 6)

- MPEG-2 支持更多的颜色下采样的模式，包括 4:2:2 和 4:4:4。

#slide2x([48], image("../public/merged-10/0048.jpg"), image("../public/translated-10/0048.jpg"), crop: 0.94, header: false, ct: 2, cb: 3)

- MPEG-2 支持非线性的量化。
- MPEG-2 限制单个 scale 不能跨行。

= MPEG-4

#slide2x([4], image("../public/merged-11/0004.jpg"), image("../public/translated-11/0004.jpg"), cb: 3)

- MPEG-4 最主要的贡献在于引入了 *基于对象的编码(object-based coding)*，包括多种形式。

#slide2x([5], image("../public/merged-11/0005.jpg"), image("../public/translated-11/0005.jpg"), h: false, ct: 2, cb: 2)

#slide2x([6], image("../public/merged-11/0006.jpg"), image("../public/translated-11/0006.jpg"), cb: 4, h: false, ct: 7)

#slide2x([7], image("../public/merged-11/0007.jpg"), image("../public/translated-11/0007.jpg"), cb: 14, ct: 3, h: false)

#slide2x([8], image("../public/merged-11/0008.jpg"), image("../public/translated-11/0008.jpg"), h: false, ct: 1, cb: 1)

#slide2x([9], image("../public/merged-11/0009.jpg"), image("../public/translated-11/0009.jpg"), h: false, ct: 1, cb: 1)

#slide2x([10], image("../public/merged-11/0010.jpg"), image("../public/translated-11/0010.jpg"), h: false, ct: 3)

#slide2x([11], image("../public/merged-11/0011.jpg"), image("../public/translated-11/0011.jpg"), cb: 4, h: false)

- MPEG-4 的视觉层次：
  - *视频对象序列(Video-object Sequence, VS)*
  - *视频对象(Video-object, VO)*
  - *视频对象层(Video Object Layer, VOL)*
  - *视频对象组(Group of VOPs, GOV)*
  - *视频对象平面(Video Object Plane, VOP)*：视频对象在特定时刻的快照。

#topic("基于对象的视觉编码", blue)[
  #slide2x([12], image("../public/merged-11/0012.jpg"), image("../public/translated-11/0012.jpg"), cb: 28)

  #slide2x([13], image("../public/merged-11/0013.jpg"), image("../public/translated-11/0013.jpg"), cb: 3)

  - 像是 MPEG-1 和 MPEG-2 的编码方式，可以被称为 *基于帧的编码(frame-based coding)* 或 *基于块的编码(block-based coding)*。

  #slide2x([14], image("../public/merged-11/0014.jpg"), image("../public/translated-11/0014.jpg"), cb: 23, ct: 2, h: false)

  #slide2x([15], image("../public/merged-11/0015.jpg"), image("../public/translated-11/0015.jpg"), cb: 18, ct: 2, h: false)

  - 动机：有些时候找不到对应块可能是因为对象之间存在遮挡（重叠）。

  #slide2x([16], image("../public/merged-11/0016.jpg"), image("../public/translated-11/0016.jpg"), cb: 3)

  #slide2x([17], image("../public/merged-11/0017.jpg"), image("../public/translated-11/0017.jpg"), cb: 11)

  #slide2x([18], image("../public/merged-11/0018.jpg"), image("../public/translated-11/0018.jpg"), cb: 5, ct: 1, h: false)

  #slide2x([19], image("../public/merged-11/0019.jpg"), image("../public/translated-11/0019.jpg"), h: false, ct: 1)

  #slide2x([22], image("../public/merged-11/0022.jpg"), image("../public/translated-11/0022.jpg"), cb: 6, ct: 2, h: false)

  - *填充* 是对边界块进行运动补偿进行填充的方法。常见的填充方法有水平填充、垂直填充。

  #example[
    *为什么需要填充？*：像右边的情况，边缘块可能在参考帧中找不到对应的块。

    #no-par-margin
    #table(
      columns: (1fr, 1fr),
      [*OK*], [*Fail*],
      align(center, image("images/2025-04-17-15-45-06.png", width: 100%)), align(center, image("images/2025-04-17-15-45-12.png", width: 100%)),
    )
  ]

  #slide2x([23], image("../public/merged-11/0023.jpg"), image("../public/translated-11/0023.jpg"), cb: 5, ct: 2, h: false)

  #slide2x([24], image("../public/merged-11/0024.jpg"), image("../public/translated-11/0024.jpg"), h: false, ct: 2, cb: 3)

  #slide2x([25], image("../public/merged-11/0025.jpg"), image("../public/translated-11/0025.jpg"), h: false, ct: 3)

  - #[
      与之前的运动矢量编码基本类似。相似度用 *绝对误差和(Sum of Absolute Differences, SAD)* 度量。

      - 多引入了一个 $"Map"(p,q)$ 控制只与 VOP 中的块进行差分。
      - 允许运动矢量精度打到 $1"/"4$ 像素级别，通过插值搜索。
    ]

  #slide2x([26], image("../public/merged-11/0026.jpg"), image("../public/translated-11/0026.jpg"), cb: 4)

  #slide2x([27], image("../public/merged-11/0027.jpg"), image("../public/translated-11/0027.jpg"), h: false, cb: 3)

  #slide2x([28], image("../public/merged-11/0028.jpg"), image("../public/translated-11/0028.jpg"), h: false, cb: 1)

  #slide2x([29], image("../public/merged-11/0029.jpg"), image("../public/translated-11/0029.jpg"), cb: 2)

  #slide2x([30], image("../public/merged-11/0030.jpg"), image("../public/translated-11/0030.jpg"), cb: 7, ct: 8, h: false)

  #slide2x([31], image("../public/merged-11/0031.jpg"), image("../public/translated-11/0031.jpg"), cb: 4, ct: 3, h: false)

  #slide2x([32], image("../public/merged-11/0032.jpg"), image("../public/translated-11/0032.jpg"), cb: 7, ct: 1, h: false)

  - MPEG-4 支持二值编码与灰度编码两种形状编码的方式。

  #slide2x([33], image("../public/merged-11/0033.jpg"), image("../public/translated-11/0033.jpg"), cb: 5)

  #slide2x([34], image("../public/merged-11/0034.jpg"), image("../public/translated-11/0034.jpg"), h: false, ct: 3, cb: 5)

  #slide2x([35], image("../public/merged-11/0035.jpg"), image("../public/translated-11/0035.jpg"), cb: 8)

  - *Sprite 编码(sprite coding)*：核心思想是将背景单独编码。

  #slide2x([36], image("../public/merged-11/0036.jpg"), image("../public/translated-11/0036.jpg"), cb: 17)
]

#slide2x([37], image("../public/merged-11/0037.jpg"), image("../public/translated-11/0037.jpg"))

#slide2x([38], image("../public/merged-11/0038.jpg"), image("../public/translated-11/0038.jpg"), cb: 18, ct: 3, h: false)

#slide2x([39], image("../public/merged-11/0039.jpg"), image("../public/translated-11/0039.jpg"), cb: 14, ct: 5, h: false)

#slide2x([40], image("../public/merged-11/0040.jpg"), image("../public/translated-11/0040.jpg"), h: false, ct: 1, cb: 1)

#slide2x([41], image("../public/merged-11/0041.jpg"), image("../public/translated-11/0041.jpg"), cb: 6, h: false, ct: 8)

#slide2x([42], image("../public/merged-11/0042.jpg"), image("../public/translated-11/0042.jpg"), h: false, ct: 2, cb: 3)

#slide2x([43], image("../public/merged-11/0043.jpg"), image("../public/translated-11/0043.jpg"), h: false, ct: 1, cb: 1)

#slide2x([44], image("../public/merged-11/0044.jpg"), image("../public/translated-11/0044.jpg"), cb: 4, h: false, ct: 3)

#slide2x([45], image("../public/merged-11/0045.jpg"), image("../public/translated-11/0045.jpg"), cb: 4, ct: 2, h: false)

#slide2x([46], image("../public/merged-11/0046.jpg"), image("../public/translated-11/0046.jpg"), h: false, ct: 5, cb: 4)

#slide2x([47], image("../public/merged-11/0047.jpg"), image("../public/translated-11/0047.jpg"), h: false, ct: 1)

#slide2x([48], image("../public/merged-11/0048.jpg"), image("../public/translated-11/0048.jpg"), h: false)

#slide2x([49], image("../public/merged-11/0049.jpg"), image("../public/translated-11/0049.jpg"), cb: 0.05)

#slide2x([50], image("../public/merged-11/0050.jpg"), image("../public/translated-11/0050.jpg"), cb: 0.07, h: false)

#slide2x([51], image("../public/merged-11/0051.jpg"), image("../public/translated-11/0051.jpg"), cb: 17)

#slide2x([52], image("../public/merged-11/0052.jpg"), image("../public/translated-11/0052.jpg"), cb: 12, ct: 3, h: false)

- H.264 还支持 *帧内预测(intra prediction, I-prediction)*。

#slide2x([53], image("../public/merged-11/0053.jpg"), image("../public/translated-11/0053.jpg"), cb: 7, ct: 2, h: false)

#slide2x([54], image("../public/merged-11/0054.jpg"), image("../public/translated-11/0054.jpg"), h: false)

= MPEG-7

#slide2x([56], image("../public/merged-11/0056.jpg"), image("../public/translated-11/0056.jpg"), cb: 11)

#slide2x([57], image("../public/merged-11/0057.jpg"), image("../public/translated-11/0057.jpg"), cb: 17, ct: 6, h: false)

#slide2x([58], image("../public/merged-11/0058.jpg"), image("../public/translated-11/0058.jpg"), h: false, cb: 2)

= MPEG-21

#slide2x([60], image("../public/merged-11/0060.jpg"), image("../public/translated-11/0060.jpg"), cb: 7)
