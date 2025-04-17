#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://mem.ac/",
    "Lecture 9. Basic Video Compression Techniques",
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
#outline(title: [TOC], indent: 2em)

= Introduction to Video Compression | 视频压缩简介

#slide2x([4], image("../public/merged-09/0004.jpg"), image("../public/translated-09/0004.jpg"))

#slide2x([5], image("../public/merged-09/0005.jpg"), image("../public/translated-09/0005.jpg"), cb: 55)

- 视频压缩的三个方向：冗余的颜色信息、空间信息、时间信息。

#slide2x([6], image("../public/merged-09/0006.jpg"), image("../public/translated-09/0006.jpg"), cb: 2)

#slide2x([7], image("../public/merged-09/0007.jpg"), image("../public/translated-09/0007.jpg"))

#slide2x([8], image("../public/merged-09/0008.jpg"), image("../public/translated-09/0008.jpg"))

#slide2x([9], image("../public/merged-09/0009.jpg"), image("../public/translated-09/0009.jpg"), cb: 27)

#slide2x([10], image("../public/merged-09/0010.jpg"), image("../public/translated-09/0010.jpg"), cb: 3)

#slide2x([11], image("../public/merged-09/0011.jpg"), image("../public/translated-09/0011.jpg"), header: false, cb: 3, ct: 2)

#slide2x([12], image("../public/merged-09/0012.jpg"), image("../public/translated-09/0012.jpg"), header: false, ct: 2, cb: 2)

#slide2x([13], image("../public/merged-09/0013.jpg"), image("../public/translated-09/0013.jpg"), header: false, ct: 2, cb: 3)

#slide2x([14], image("../public/merged-09/0014.jpg"), image("../public/translated-09/0014.jpg"), header: false, ct: 3, cb: 1)

= Compression by Motion Compensation | 基于运动补偿的压缩

== Main Idea of Motion Compensation | 运动补偿的基本思想

- 想法：改进视频帧的差分——通过运动估计与运动补偿。主要来源：#mark[相机或物体的移动]。
- *运动矢量(motion vector)* 搜索：找到 *当前帧(target frame)* 中的 *宏块(macroblock)* 在 *参考帧(reference frame)* 中的最匹配位置。
- *运动补偿(motion compensation)*：指存储当前帧和参考帧对应块中的差值。

#no-par-margin
#align(center, image("images/2025-04-17-13-03-57.png", width: 60%))

#slide2x([16], image("../public/merged-09/0016.jpg"), image("../public/translated-09/0016.jpg"))

#slide2x([17], image("../public/merged-09/0017.jpg"), image("../public/translated-09/0017.jpg"), header: false, cb: 5, ct: 2)

#slide2x([18], image("../public/merged-09/0018.jpg"), image("../public/translated-09/0018.jpg"), cb: 11)

#slide2x([19], image("../public/merged-09/0019.jpg"), image("../public/translated-09/0019.jpg"), header: false, cb: 26, ct: 3)

- 关于宏块划分：灰度图像中一般为 $16 times 16$，色度图像中因为进行了 4:2:0 的下采样，一般为 $8 times 8$。

#slide2x([20], image("../public/merged-09/0020.jpg"), image("../public/translated-09/0020.jpg"), header: false, cb: 9, ct: 2)

#slide2x([22], image("../public/merged-09/0022.jpg"), image("../public/translated-09/0022.jpg"), header: false, cb: 9, ct: 4)

== Search for Motion Vectors | 运动向量搜索

#slide2x([24], image("../public/merged-09/0024.jpg"), image("../public/translated-09/0024.jpg"), cb: 5)

#slide2x([25], image("../public/merged-09/0025.jpg"), image("../public/translated-09/0025.jpg"))

- 一般只在一个有限的区域内进行运动矢量搜索。如设置 $i,j$ 在 $[-p,p]$ 的范围内，则搜索窗口的大小为 $(2p+1) times (2p+1)$。

#slide2x([27], image("../public/merged-09/0027.jpg"), image("../public/translated-09/0027.jpg"), cb: 7)

- *顺序搜索(sequential search)*：从搜索窗口的中心开始，向四周扩散搜索（或者按照别的顺序）。复杂度 $O(N^2 p^2)$。

#slide2x([28], image("../public/merged-09/0028.jpg"), image("../public/translated-09/0028.jpg"), header: false, cb: 2)

#slide2x([29], image("../public/merged-09/0029.jpg"), image("../public/translated-09/0029.jpg"), cb: 6)

- *二维对数搜索(2D-logarithmic search)*：类似于序列上的二分查找思想，每次找 9 个位置，从中选择差分最小的块进行迭代（具体做法参考下图）。复杂度 $O(N^2 log p)$，但不保证能找到最匹配的。

#no-par-margin
#align(center, image("images/2025-04-17-13-08-54.png", width: 40%))

#slide2x([31], image("../public/merged-09/0031.jpg"), image("../public/translated-09/0031.jpg"), header: false, ct: 2, cb: 1)

#slide2x([32], image("../public/merged-09/0032.jpg"), image("../public/translated-09/0032.jpg"), cb: 36, header: false, ct: 3)

#slide2x([33], image("../public/merged-09/0033.jpg"), image("../public/translated-09/0033.jpg"), cb: 9)

- *分层搜索(hierarchical search)*：先进行下采样再进行运动搜索，这样所需设置的 $p$ 就可以大大减小。

#no-par-margin
#align(center, image("images/2025-04-17-13-11-09.png", width: 36%))

#slide2x([35], image("../public/merged-09/0035.jpg"), image("../public/translated-09/0035.jpg"), header: false, ct: 4, cb: 8)

#slide2x([36], image("../public/merged-09/0036.jpg"), image("../public/translated-09/0036.jpg"), header: false, ct: 3, cb: 6)

#slide2x([37], image("../public/merged-09/0037.jpg"), image("../public/translated-09/0037.jpg"), header: false, ct: 12, cb: 15)

#slide2x([38], image("../public/merged-09/0038.jpg"), image("../public/translated-09/0038.jpg"), cb: 0.08)

= Popular Video Standards | 流行视频标准

== H.261

#slide2x([40], image("../public/merged-09/0040.jpg"), image("../public/translated-09/0040.jpg"))

#slide2x([41], image("../public/merged-09/0041.jpg"), image("../public/translated-09/0041.jpg"), header: false, cb: 19, ct: 7)

#slide2x([43], image("../public/merged-09/0043.jpg"), image("../public/translated-09/0043.jpg"), header: false)

- *I帧(Intra-frame, I-frame)*：只进行独立编码；*P帧(Inter-frame, P-frame)*：根据前一帧进行运动补偿。
  - 为了保证视频质量，避免因差分和量化而累积误差，#mark[每隔几帧会强制插入一个 I 帧]。
  - H.261 只进行前向预测，即永远使用前一帧作为参考帧。

#no-par-margin
#align(center, image("images/2025-04-17-13-15-27.png", width: 36%))

#slide2x([44], image("../public/merged-09/0044.jpg"), image("../public/translated-09/0044.jpg"), cb: 7)

#slide2x([45], image("../public/merged-09/0045.jpg"), image("../public/translated-09/0045.jpg"))

- 运动向量搜索只需要在灰度通道（Y）进行，色度通道（U、V）可以直接继承这一结果。

#slide2x([46], image("../public/merged-09/0046.jpg"), image("../public/translated-09/0046.jpg"), header: false, cb: 5)

#slide2x([47], image("../public/merged-09/0047.jpg"), image("../public/translated-09/0047.jpg"))

#slide2x([48], image("../public/merged-09/0048.jpg"), image("../public/translated-09/0048.jpg"))

#slide2x([49], image("../public/merged-09/0049.jpg"), image("../public/translated-09/0049.jpg"), header: false)

#slide2x([50], image("../public/merged-09/0050.jpg"), image("../public/translated-09/0050.jpg"), cb: 3)

#slide2x([51], image("../public/merged-09/0051.jpg"), image("../public/translated-09/0051.jpg"), header: false, cb: 2)

#slide2x([52], image("../public/merged-09/0052.jpg"), image("../public/translated-09/0052.jpg"), header: false, cb: 38, ct: 3)

#slide2x([53], image("../public/merged-09/0053.jpg"), image("../public/translated-09/0053.jpg"), header: false, cb: 9, ct: 2)

#slide2x([54], image("../public/merged-09/0054.jpg"), image("../public/translated-09/0054.jpg"), cb: 40, header: false, ct: 2)

#slide2x([55], image("../public/merged-09/0055.jpg"), image("../public/translated-09/0055.jpg"), header: false, cb: 15, ct: 2)

#slide2x([56], image("../public/merged-09/0056.jpg"), image("../public/translated-09/0056.jpg"), cb: 27, ct: 5, header: false)

== H.263

#slide2x([58], image("../public/merged-09/0058.jpg"), image("../public/translated-09/0058.jpg"), cb: 3)

#slide2x([59], image("../public/merged-09/0059.jpg"), image("../public/translated-09/0059.jpg"), cb: 15)

- H.263 中的块大小可以不是固定的。

#slide2x([60], image("../public/merged-09/0060.jpg"), image("../public/translated-09/0060.jpg"), header: false, cb: 4)

#slide2x([61], image("../public/merged-09/0061.jpg"), image("../public/translated-09/0061.jpg"), cb: 6)

#slide2x([62], image("../public/merged-09/0062.jpg"), image("../public/translated-09/0062.jpg"), header: false)

#slide2x([63], image("../public/merged-09/0063.jpg"), image("../public/translated-09/0063.jpg"), header: false)

#slide2x([64], image("../public/merged-09/0064.jpg"), image("../public/translated-09/0064.jpg"), cb: 43)

#slide2x([65], image("../public/merged-09/0065.jpg"), image("../public/translated-09/0065.jpg"), header: false)

#slide2x([66], image("../public/merged-09/0066.jpg"), image("../public/translated-09/0066.jpg"), header: false)

#slide2x([67], image("../public/merged-09/0067.jpg"), image("../public/translated-09/0067.jpg"), header: false, ct: 2)

#slide2x([68], image("../public/merged-09/0068.jpg"), image("../public/translated-09/0068.jpg"), cb: 0.11)
