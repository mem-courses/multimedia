#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://mem.ac/",
    "Lecture 7. Lossy Compression Algorithms",
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

#slide2x([3], image("../public/merged-07/0003.jpg"), image("../public/translated-07/0003.jpg"), cb: 0.13)

= Distortion Measures | 失真度量

#slide2x([5], image("../public/merged-07/0005.jpg"), image("../public/translated-07/0005.jpg"), cb: 0.24)

- *失真度量(distortion measure)*：近似值与原始值之间有多接近的度量；感知失真的度量。

#slide2x([6], image("../public/merged-07/0006.jpg"), image("../public/translated-07/0006.jpg"), cb: 0.01)

- *均方误差(Mean Square Error, MSE)*：衡量了平均像素差异
#no-par-margin
$
  sigma^2 = 1 / N sum_(i=1)^N (x_n - y_n)^2
$
#no-par-margin

- *信噪比(signal-to-noise ratio, SNR)*：信噪比越高，说明有损压缩的质量就越好。
  - $sigma_x^2 = 1/N sum_(i=1)^N x_i^2$；$sigma_d^2 = 1/N sum_(i=1)^N (x_i-y_i)^2 = "MSE"$。
#no-par-margin
$
  "SNR" = 10 log_10 (sigma^2_x) / (sigma^2_d) = (x)
$
#no-par-margin

- *峰值信噪比(peak-signal-to-noise ratio, PSNR)*：峰值信噪比越高，也说明有损压缩的质量越好。
  - $x_"peak"$：信号可能的最大值，如在 8 位色图中是 255。
#no-par-margin
$
  "PSNR" = 10 log_10 (x^2_"peak") / (sigma^2_d)
$

#slide2x([7], image("../public/merged-07/0007.jpg"), image("../public/translated-07/0007.jpg"), cb: 0.10, h: false, ct: 0.05)

= The Rate-Distortion Theory | 率失真理论

#slide2x([9], image("../public/merged-07/0009.jpg"), image("../public/translated-07/0009.jpg"), cb: 0.04)

- *速率(rate)*：每个源符号所需要的平均比特数。
- *率失真函数(rate-distortion function)* $R(D)$：将失真限制在 $D$ 以内的情况下，对源数据编码的最低速率。当 $D=0$ 时，因为是无损压缩，此时 $R(D)$ 就是源数据的熵。

#slide2x([10], image("../public/merged-07/0010.jpg"), image("../public/translated-07/0010.jpg"), cb: 0.01)

= Quantization | 量化

#slide2x([12], image("../public/merged-07/0012.jpg"), image("../public/translated-07/0012.jpg"), cb: 0.06)

- *量化(quantization)* 是有损压缩的核心机制。量化的主要功能是减少数据中不同值的数量，从而实现压缩。
- #box(width: 100%)[
    *量化器(quantizer)* 的分类：
    - #box(width: 100%)[
        标量量化器
        - 均匀量化
        - 非均匀量化
      ]
    - 矢量量化器
  ]

#slide2x([13], image("../public/merged-07/0013.jpg"), image("../public/translated-07/0013.jpg"), cb: 0.01)

- *均匀标量量化器(uniform scalar quantizer)* 将输入范围划分为等间隔的区间。

#no-par-margin
#align(
  center,
  table(
    columns: 2,
    [*midrise*], [*midtread*],
    [$Q_"midrise" (x) = floor(x) + 0.5$], [$Q_"midtread" = floor(x + 0.5)$],
    align(center, image("images/2025-04-15-23-28-07.png", width: 100%)), align(center, image("images/2025-04-15-23-28-08.png", width: 100%)),
  ),
)

#slide2x([14], image("../public/merged-07/0014.jpg"), image("../public/translated-07/0014.jpg"), h: false, cb: 0.56)

#slide2x([15], image("../public/merged-07/0015.jpg"), image("../public/translated-07/0015.jpg"), cb: 0.01, h: false, ct: 0.04)

#slide2x([16], image("../public/merged-07/0016.jpg"), image("../public/translated-07/0016.jpg"), cb: 0.05, h: false, ct: 0.05)

#slide2x([17], image("../public/merged-07/0017.jpg"), image("../public/translated-07/0017.jpg"), cb: 0.01, h: false, ct: 0.06)

#slide2x([18], image("../public/merged-07/0018.jpg"), image("../public/translated-07/0018.jpg"), cb: 0.05)

#slide2x([19], image("../public/merged-07/0019.jpg"), image("../public/translated-07/0019.jpg"), cb: 0.07, h: false, ct: 0.01)

= Transform Coding | 变换编码
#let bf(x) = math.upright(math.bold(x))

#slide2x([21], image("../public/merged-07/0021.jpg"), image("../public/translated-07/0021.jpg"))

- 根据信息论的原理，#mark[编码向量比编码标量更高效]——需要将连续的输入样本分组为向量。
- 结论：如果对样本向量 $bf(X)$ 应用线性变换 $T$ 得到向量 $bf(Y)$，如果 $bf(Y)$ 的向量元素相关性更低，那么对其进行压缩编码的效率就会更高。

#topic("离散余弦变换", blue)[
  #slide2x([22], image("../public/merged-07/0022.jpg"), image("../public/translated-07/0022.jpg"))

  #slide2x([23], image("../public/merged-07/0023.jpg"), image("../public/translated-07/0023.jpg"), cb: 0.01)

  #slide2x([24], image("../public/merged-07/0024.jpg"), image("../public/translated-07/0024.jpg"), h: false)

  #slide2x([25], image("../public/merged-07/0025.jpg"), image("../public/translated-07/0025.jpg"), cb: 0.01, h: false)

  #slide2x([26], image("../public/merged-07/0026.jpg"), image("../public/translated-07/0026.jpg"), cb: 0.01, h: false)

  #slide2x([27], image("../public/merged-07/0027.jpg"), image("../public/translated-07/0027.jpg"), h: false)

  #slide2x([28], image("../public/merged-07/0028.jpg"), image("../public/translated-07/0028.jpg"), h: false)

  #slide2x([29], image("../public/merged-07/0029.jpg"), image("../public/translated-07/0029.jpg"), h: false)

  #slide2x([30], image("../public/merged-07/0030.jpg"), image("../public/translated-07/0030.jpg"), cb: 0.03)

  - *一维DCT变换(1D Discrete Cosine Transform)* 与 *一维DCT逆变换(1D Inverse Discrete Cosine Transform)* 公式：（取 $N=8$）

  #no-par-margin
  $
    F(u) = C(u) / 2 sum_(i=0)^7 cos ((2i+1) u pi) / 16 f(i), quad\
    tilde(f)(i) = sum_(u=0)^7 C(u) / 2 cos ((2i+1) u pi) / 16 F(u),quad\
    "where "C(u) = cases(
      sqrt(2)/2\,quad&u=0,
      1\,quad&"otherwise"
    ),quad forall i in {0,1,dots,7},u in {0,1,dots,7}.
  $

  #slide2x([31], image("../public/merged-07/0031.jpg"), image("../public/translated-07/0031.jpg"), cb: 0.12, h: false)

  #slide2x([32], image("../public/merged-07/0032.jpg"), image("../public/translated-07/0032.jpg"))

  #slide2x([33], image("../public/merged-07/0033.jpg"), image("../public/translated-07/0033.jpg"), cb: 0.05)

  #slide2x([34], image("../public/merged-07/0034.jpg"), image("../public/translated-07/0034.jpg"), cb: 0.05)

  #slide2x([35], image("../public/merged-07/0035.jpg"), image("../public/translated-07/0035.jpg"), ct: 0.06)

  #slide2x([36], image("../public/merged-07/0036.jpg"), image("../public/translated-07/0036.jpg"), cb: 6, h: false, ct: 0.02)

  - 余弦基函数是正交的——DCT变换是一个#mark[正交]线性变换。

  #slide2x([37], image("../public/merged-07/0037.jpg"), image("../public/translated-07/0037.jpg"), cb: 11, h: false, ct: 3)

  #slide2x([38], image("../public/merged-07/0038.jpg"), image("../public/translated-07/0038.jpg"), h: false, cb: 2)

  #slide2x([39], image("../public/merged-07/0039.jpg"), image("../public/translated-07/0039.jpg"), cb: 13, h: false)

  #slide2x([40], image("../public/merged-07/0040.jpg"), image("../public/translated-07/0040.jpg"), h: false, cb: 2)

  #slide2x([41], image("../public/merged-07/0041.jpg"), image("../public/translated-07/0041.jpg"), h: false)

  #slide2x([42], image("../public/merged-07/0042.jpg"), image("../public/translated-07/0042.jpg"), cb: 0.14, h: false, ct: 1)

  - *结论1*：$T(alpha p + beta q) = alpha T(p) + beta T(q)$。这是正交变换的结论，对于 DCT 变换自然适用。

  #slide2x([43], image("../public/merged-07/0043.jpg"), image("../public/translated-07/0043.jpg"), h: false)

  - *结论2*：（物理意义）DCT变换相当于通过基信号的线性组合来近似原始信号。这可以利用正交矩阵的性质 $bf(T)^top = bf(T)^(-1)$ 得到：$bf(f) = bf(T)^(-1) bf(f) = bf(T)^top bf(F)$。

  #slide2x([44], image("../public/merged-07/0044.jpg"), image("../public/translated-07/0044.jpg"), h: false)

  #slide2x([45], image("../public/merged-07/0045.jpg"), image("../public/translated-07/0045.jpg"), cb: 0.07, h: false)

  #slide2x([46], image("../public/merged-07/0046.jpg"), image("../public/translated-07/0046.jpg"), cb: 14, h: false, ct: 7)

  #slide2x([47], image("../public/merged-07/0047.jpg"), image("../public/translated-07/0047.jpg"), cb: 12, ct: 5, h: false)

  #slide2x([48], image("../public/merged-07/0048.jpg"), image("../public/translated-07/0048.jpg"), cb: 0.03, h: false)

  #slide2x([49], image("../public/merged-07/0049.jpg"), image("../public/translated-07/0049.jpg"), cb: 17, ct: 2, h: false)

  #slide2x([50], image("../public/merged-07/0050.jpg"), image("../public/translated-07/0050.jpg"), cb: 0.01, h: false)

  - DCT 变换可用于做频谱分析：$F(0)$ 就反应了原始信号中直流分量的强度，之后的几个 $F(u)$ 依次反应了从低频到高频的信号分量强度。
    - 如果直流分量为负值，说明 $f(i)$ 的平均值小于 $0$；
    - 如果交流分量为负值，说明 $f(i)$ 和某个基函数具有相同频率，但刚好落后半个周期。

  #slide2x([51], image("../public/merged-07/0051.jpg"), image("../public/translated-07/0051.jpg"), cb: 26, ct: 2, h: false)

  #slide2x([52], image("../public/merged-07/0052.jpg"), image("../public/translated-07/0052.jpg"), cb: 4, ct: 2, h: false)

  - *二维DCT变换(2D Discrete Cosine Transform)* 与 *二维DCT逆变换(2D Inverse Discrete Cosine Transform)* 公式：（取 $N=M=8$）

  #no-par-margin
  $
    F(u,v) = (C(u)C(v)) / 4 sum_(i=0)^7 cos ((2i+1) u pi) / 16 cos ((2j+1) v pi) / 16 f(i,j),quad\
    tilde(f)(i,j) = sum_(u=0)^7 sum_(v=0)^7 (C(u)C(v)) / 4 cos ((2i+1) u pi) / 16 cos ((2j+1) v pi) / 16 F(u,v),quad\
    "where "C(u) = cases(
      sqrt(2)/2\,quad&u=0,
      1\,quad&"otherwise"
    ).
  $

  #slide2x([53], image("../public/merged-07/0053.jpg"), image("../public/translated-07/0053.jpg"), cb: 14, ct: 1, h: false)

  #slide2x([54], image("../public/merged-07/0054.jpg"), image("../public/translated-07/0054.jpg"), cb: 7, ct: 1, h: false)
]

#slide2x([55], image("../public/merged-07/0055.jpg"), image("../public/translated-07/0055.jpg"))

#slide2x([56], image("../public/merged-07/0056.jpg"), image("../public/translated-07/0056.jpg"), cb: 10, h: false, ct: 1)

#slide2x([57], image("../public/merged-07/0057.jpg"), image("../public/translated-07/0057.jpg"), cb: 16, h: false, ct: 10)

= Wavelet-Base Coding

#slide2x([59], image("../public/merged-07/0059.jpg"), image("../public/translated-07/0059.jpg"), cb: 0.03)

#slide2x([60], image("../public/merged-07/0060.jpg"), image("../public/translated-07/0060.jpg"), cb: 0.03)

#slide2x([61], image("../public/merged-07/0061.jpg"), image("../public/translated-07/0061.jpg"))

#slide2x([62], image("../public/merged-07/0062.jpg"), image("../public/translated-07/0062.jpg"), h: false)

#example(title: [离散哈尔小波变换示例])[

  对于输入序列 ${x_(n,i)} = {10, 13, 25, 26, 29, 21, 7, 15}$，进行依次小波变换就是将其两两求平均、两两求差，然后依次排到一个序列里，得到：${x_(n-1,i), d_(n-1,i)} = {11.5, 25.5, 25, 11, -1.5, -0.5, 4, -4}$。
]

#slide2x([63], image("../public/merged-07/0063.jpg"), image("../public/translated-07/0063.jpg"))

- *一维哈尔小波变换(1D haar wavelet transform)*：在应用一次小波变换之后，可以对前半部分接着应用。量化时因为后半部分的数据大部分接近于 0，可以有效减少信息的熵。

#slide2x([64], image("../public/merged-07/0064.jpg"), image("../public/translated-07/0064.jpg"), cb: 4)

#slide2x([65], image("../public/merged-07/0065.jpg"), image("../public/translated-07/0065.jpg"), h: false, ct: 3, cb: 1)

#slide2x([66], image("../public/merged-07/0066.jpg"), image("../public/translated-07/0066.jpg"), h: false, ct: 2)

#slide2x([67], image("../public/merged-07/0067.jpg"), image("../public/translated-07/0067.jpg"), h: false, ct: 2)

#slide2x([68], image("../public/merged-07/0068.jpg"), image("../public/translated-07/0068.jpg"), cb: 7, ct: 7, h: false)

#slide2x([69], image("../public/merged-07/0069.jpg"), image("../public/translated-07/0069.jpg"), cb: 8, ct: 7, h: false)

- *二维哈尔小波变换(2D haar wavelet transform)*：横竖交替进行，同样可以进行量化以有效降低图片的熵。