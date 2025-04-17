#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://mem.ac/",
    "Lecture 8. Image Compressioon Standards",
  ),
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      link: "https://mem.ac/",
    ),
  ),
  semester: "Spring-Summer 2025",
  date: "March 14, 2025",
  page-margin: (left: 16mm, right: 16mm, top: 4mm, bottom: 12mm),
  show-header: false,
)

#slide-width.update(x => 976)
#slide-height.update(x => 670)
#outline(title: [TOC], indent: 2em)

= The JPEG Standard | JPEG 图像标准

#slide2x([4], image("../public/merged-08/0004.jpg"), image("../public/translated-08/0004.jpg"), cb: 0.05)

#slide2x([5], image("../public/merged-08/0005.jpg"), image("../public/translated-08/0005.jpg"), cb: 25, h: false, ct: 2)

== JPEG Image Compression | JPEG 图像压缩

#slide2x([6], image("../public/merged-08/0006.jpg"), image("../public/translated-08/0006.jpg"), cb: 4)

#slide2x([7], image("../public/merged-08/0007.jpg"), image("../public/translated-08/0007.jpg"), cb: 8, h: false, ct: 4)

- 对 JPEG 图像的观察结果：
  - 图像局部的变化不大，存在空间冗余。
  - 人类对低频信号的敏感度#mark[高于]对高频信号的敏感度。
  - 人眼对灰度图像的敏感度高于对色彩信号的敏感度——JPEG采用4:2:0的色彩下采样。

#slide2x([8], image("../public/merged-08/0008.jpg"), image("../public/translated-08/0008.jpg"), cb: 0.09)

#summary(title: "JPEG 图像压缩流程图")[
  #no-par-margin
  #align(center, image("images/2025-04-16-12-02-31.png", width: 44%))
]

- Step 1：将图像从 RGB 空间转化为 YIQ 或者 YUV 空间并进行 4:2:0 的色彩下采样。
  - 4:2:0 的色彩下采样：灰度信号按 $1 times 1$ 的格子采样，色度信号按 $2 times 2$ 的格子采样。

#slide2x([10], image("../public/merged-08/0010.jpg"), image("../public/translated-08/0010.jpg"), cb: 0.06)

#slide2x([11], image("../public/merged-08/0011.jpg"), image("../public/translated-08/0011.jpg"), cb: 16, ct: 2, h: false)

- Step 2：把图像拆分成 $8 times 8$ 的小块，并对每个块应用 2D DCT 变换。
  - $8 times 8$ 的块可以平衡准确性与计算量。
  - 太大的块会出现“*块状伪影(blocking artifact)*”的问题。

#slide2x([12], image("../public/merged-08/0012.jpg"), image("../public/translated-08/0012.jpg"), cb: 2)

#slide2x([13], image("../public/merged-08/0013.jpg"), image("../public/translated-08/0013.jpg"), h: false)

- Step 3：对于 2D DCT 的结果 $F$，通过量化表 $Q$ 可以计算得到量化后的结果 $hat(F)(u,v) = "round"(F(u,v)/Q(u,v))$。P13 给出了灰度空间和色度空间分别所使用的量化表。

#slide2x([14], image("../public/merged-08/0014.jpg"), image("../public/translated-08/0014.jpg"), h: false)

#slide2x([15], image("../public/merged-08/0015.jpg"), image("../public/translated-08/0015.jpg"), h: false)

#slide2x([16], image("../public/merged-08/0016.jpg"), image("../public/translated-08/0016.jpg"), h: false)

#slide2x([17], image("../public/merged-08/0017.jpg"), image("../public/translated-08/0017.jpg"), h: false)

#slide2x([18], image("../public/merged-08/0018.jpg"), image("../public/translated-08/0018.jpg"), cb: 51, h: false, ct: 9)

#slide2x([19], image("../public/merged-08/0019.jpg"), image("../public/translated-08/0019.jpg"), cb: 0.01)

- Step 4：Zigzag 扫描：按照如图所示的方式进行扫描 $8 times 8$ 的块，这样就得到了一个低频到高频排列的 64 维向量。

#no-par-margin
#align(center, image("images/2025-04-16-11-54-27.png", width: 50%))

#slide2x([21], image("../public/merged-08/0021.jpg"), image("../public/translated-08/0021.jpg"), cb: 10)

#slide2x([22], image("../public/merged-08/0022.jpg"), image("../public/translated-08/0022.jpg"), cb: 30, ct: 3, h: false)

- Step 5：对直流信号的部分（每个块的第一个）应用 DPCM 编码。

#slide2x([20], image("../public/merged-08/0020.jpg"), image("../public/translated-08/0020.jpg"), cb: 0.07)

- Step 6：对交流信号的部分（每个块的剩下 63 个）应用游程编码。

#slide2x([23], image("../public/merged-08/0023.jpg"), image("../public/translated-08/0023.jpg"))

#slide2x([24], image("../public/merged-08/0024.jpg"), image("../public/translated-08/0024.jpg"), cb: 3, ct: 3, h: false)

== JPEG Modes | JPEG 模式

#slide2x([26], image("../public/merged-08/0026.jpg"), image("../public/translated-08/0026.jpg"), cb: 26)

- JPEG *顺序模式(sequential mode)*
  - 默认的 JPEG 模式。
  - 按照从左到右、从上到下的顺序进行扫描编码。

#slide2x([27], image("../public/merged-08/0027.jpg"), image("../public/translated-08/0027.jpg"), cb: 8)

#slide2x([28], image("../public/merged-08/0028.jpg"), image("../public/translated-08/0028.jpg"), cb: 10, h: false, ct: 10)

- JPEG *渐进模式(progressive mode)*：有两种方法。
  - *频谱选择(spectral selection)*：第一轮扫描选择 DC、AC1、AC2；第二轮扫描选择 AC3、AC4、AC5……以此类推。
  - *逐次逼近(successive approximation)*：同时发送所有DCT系数，但是先编码高二进制位再编码低二进制位。

#slide2x([29], image("../public/merged-08/0029.jpg"), image("../public/translated-08/0029.jpg"), cb: 9)

#slide2x([30], image("../public/merged-08/0030.jpg"), image("../public/translated-08/0030.jpg"), cb: 13, h: false, ct: 5)

#slide2x([31], image("../public/merged-08/0031.jpg"), image("../public/translated-08/0031.jpg"), ct: 2, h: false)

#slide2x([32], image("../public/merged-08/0032.jpg"), image("../public/translated-08/0032.jpg"), cb: 5, h: false, ct: 10)

- JPEG *分层模式(hierarchical mode)*：通过不同分辨率的层级结构（通过下采样的方式得到）对图像进行编码。

#example(title: [JPEG 分层模式（以 2 层为例）])[
  设 $512 times 512$ 的原图为 $f_1$，则按 $2 times 2$ 进行下采样得到的 $256 times 256$ 分辨率的图片记为 $f_2$，按 $4 times 4$ 下采样得到的 $128 times 128$ 分辨率的图片记为 $f_4$。

  - 将 $f_4$ 进行 DCT 编码得 $F_4$ 并传输，设 $F_4$ 还原出的结果为 $tilde(f)_4$。
  - 设 $d_2 = f_2 - E(tilde(f)_4)$，其中 $E(dot)$ 表示最近邻或双线性插值以放大 $tilde(f)_4$ 到 $256 times 256$ 分辨率的结果。将 $d_4$ 通过 DCT 编码得 $D_4$ 并传输。
  - 因此 $tilde(f)_2 = E(tilde(f)_4) + tilde(d)_4$，类似的有 $d_1=f_1 - E(tilde(f)_2)$，编码为 $D_1$ 并传输。
]

#slide2x([33], image("../public/merged-08/0033.jpg"), image("../public/translated-08/0033.jpg"), cb: 0.09)

- JPEG *无损模式(lossless mode)*：不适用 DCT 编码，而是直接使用差分预测编码，因此压缩比很低。

#slide2x([34], image("../public/merged-08/0034.jpg"), image("../public/translated-08/0034.jpg"))

#slide2x([35], image("../public/merged-08/0035.jpg"), image("../public/translated-08/0035.jpg"), cb: 0.07)

= (\*)The JPEG2000 Standard

#slide2x([37], image("../public/merged-08/0037.jpg"), image("../public/translated-08/0037.jpg"), cb: 0.06)

#slide2x([38], image("../public/merged-08/0038.jpg"), image("../public/translated-08/0038.jpg"))

#slide2x([39], image("../public/merged-08/0039.jpg"), image("../public/translated-08/0039.jpg"), h: false)

#slide2x([40], image("../public/merged-08/0040.jpg"), image("../public/translated-08/0040.jpg"), cb: 7)

#slide2x([41], image("../public/merged-08/0041.jpg"), image("../public/translated-08/0041.jpg"), h: false)

#slide2x([42], image("../public/merged-08/0042.jpg"), image("../public/translated-08/0042.jpg"), h: false)

#slide2x([43], image("../public/merged-08/0043.jpg"), image("../public/translated-08/0043.jpg"), h: false)

#slide2x([44], image("../public/merged-08/0044.jpg"), image("../public/translated-08/0044.jpg"), h: false)

#slide2x([45], image("../public/merged-08/0045.jpg"), image("../public/translated-08/0045.jpg"), h: false)


