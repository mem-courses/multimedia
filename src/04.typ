#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fsundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://www.baidu.com",
    "Lecture 4. Fundamental Concepts in Video",
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

#slide2x([2], image("../public/merged-04/0002.jpg"), image("../public/translated-04/0002.jpg"), crop: 0.47)

#slide2x([3], image("../public/merged-04/0003.jpg"), image("../public/translated-04/0003.jpg"), crop: 0.48)

- 视频信号主要分为三种：分量视频、复合视频和 S-Video。主要区别于传输不同颜色分量信号的方式。

#slide2x([4], image("../public/merged-04/0004.jpg"), image("../public/translated-04/0004.jpg"), crop: 0.9)

- *分量视频(component video)*：将视频信号 RGB 通过三条线缆传输，从而不存在信号之间的 *串扰(crosstalk)*。

#slide2x([5], image("../public/merged-04/0005.jpg"), image("../public/translated-04/0005.jpg"), crop: 0.75)

#slide2x([6], image("../public/merged-04/0006.jpg"), image("../public/translated-04/0006.jpg"))

- *复合视频(composite video)*：将 *色度(chrominance)* 和 *亮度(luminance)* 信号混合到单个载波形中，从而通过一条线缆传输。（分离的方法后面会提到）

#slide2x([7], image("../public/merged-04/0007.jpg"), image("../public/translated-04/0007.jpg"))

#slide2x([8], image("../public/merged-04/0008.jpg"), image("../public/translated-04/0008.jpg"), crop: 0.9)

- *S 视频(super video, S-video)* 是一种折衷的方案，将灰度信号和色度信号通过两条线缆传输。
  - 这利用了人眼区分灰度的能力远高于色度的性质，致力于避免灰度信号和色度信号之间的串扰。

#slide2x([9], image("../public/merged-04/0009.jpg"), image("../public/translated-04/0009.jpg"), crop: 0.67)

#slide2x([10], image("../public/merged-04/0010.jpg"), image("../public/translated-04/0010.jpg"))

- *逐行扫描(progressive scanning)*：在每个时间间隔内按行扫描完整图像，如 CRT显示器就采用这种方式。

#slide2x([11], image("../public/merged-04/0011.jpg"), image("../public/translated-04/0011.jpg"), crop: 0.83)

- *隔行扫描(interlaced scanning)*：逐行扫描的一个改进版本，先扫描奇数行再扫描偶数行。
  - 值得一提的是，这仍是通过沿着同一方向向量扫描进行实现的，参见下图：
  - 注意到，先从 $P$ 扫描到 $Q$，再从 $R$ 扫描到 $S$ 依次类推直到扫描完所有奇数行并恰好在 $T$ 点接触。接下来自动跳转到 $U$ 并继续偶数行的扫描。直到扫描完所有偶数行在从 $V$ 回到 $P$，开始新的一个扫描周期。
  - 可以发现如果使用隔行扫描的方法的话，每一帧的行数应该是奇数，每一场的行数需刚好多出半行。

#no-par-margin
#align(center, image("images/2025-03-28-17-14-48.png", width: 50%))
#no-par-margin

- *水平回扫(horizontal retrace)*：从 $Q$ 到 $R$ 的跳转称为水平回扫，再次期间，CRT 的电子束被消隐（参见P15）。
- *垂直回扫(vertical retrace)*：从 $Y$ 到 $U$ 的跳转和从 $V$ 到 $P$ 的跳转被称为垂直回扫。

#slide2x([13], image("../public/merged-04/0013.jpg"), image("../public/translated-04/0013.jpg"), crop: 0.94)

#slide2x([14], image("../public/merged-04/0014.jpg"), image("../public/translated-04/0014.jpg"), crop: 0.96)

#slide2x([15], image("../public/merged-04/0015.jpg"), image("../public/translated-04/0015.jpg"))

- NTSC 的扫描信号实例。
  - 对于水平回扫阶段，可以给一个“比黑更黑”的电压，并用于表示一行的开始。

#slide2x([16], image("../public/merged-04/0016.jpg"), image("../public/translated-04/0016.jpg"))

#slide2x([17], image("../public/merged-04/0017.jpg"), image("../public/translated-04/0017.jpg"))

#slide2x([18], image("../public/merged-04/0018.jpg"), image("../public/translated-04/0018.jpg"))

- 一些关于 NTSC 的参数
  - 525 行每帧，262.5 行每场（采用隔行扫描的方式），其中每场预留了 20 行用于垂直回扫。
  - $1"/"15734 mu s = 63.6 mu s$ 每行，其中 $10.9 mu s$ 用于水平回扫，$52.7 mu s$ 用于显示（可参考 P15）。

#no-par-margin
#align(center, image("images/2025-03-28-17-25-55.png", width: 30%))

#slide2x([20], image("../public/merged-04/0020.jpg"), image("../public/translated-04/0020.jpg"))

- *水平分辨率(horizontal resolution)*：每行采样的像素数。
- NTSC 标准没有固定的水平分辨率，而是通过 *samples per line* 来决定。

#topic("调制解调", blue)[
  #slide2x([21], image("../public/merged-04/0021.jpg"), image("../public/translated-04/0021.jpg"), crop: 0.91)

  - *正交调制技术(quadrature modulation)*：将 *同相(in-phase)* 信号 $I(t)$ 和 *正交(quadrature)* 信号 $Q(t)$ 分别调制到两个正交的载波上，组合乘一个 *色度信号(chroma signal)* $C$:

  #no-par-margin
  $
    important(C = I cos (F_"sc" t) +Q sin (F_"sc" t))
  $
  #no-par-margin

  - 色度信号也被称为 *颜色子载波(color subcarrier)*，其频率为 $F_"sc" approx 3.58 "MHz"$，课件 P23 解释了这样设置的原因。
  - *NTSC 复合信号* 将亮度信号 $Y$ 和色度信号进一步组合，为 YIQ 分别分配了 4.2 MHz、1.6 MHz 和 0.6 MHz 的带宽：

  #no-par-margin
  $
    important(V_"composite" = Y + C = Y + I cos (F_"sc" t) +Q sin (F_"sc" t))
  $

  #slide2x([22], image("../public/merged-04/0022.jpg"), image("../public/translated-04/0022.jpg"))

  #slide2x([23], image("../public/merged-04/0023.jpg"), image("../public/translated-04/0023.jpg"))

  #slide2x([24], image("../public/merged-04/0024.jpg"), image("../public/translated-04/0024.jpg"))

  #example[
    *解码 NTSC 复合信号*

    根据 P21 所给出的，NTSC 复合信号的形式为：

    $
      V_"composite" = underbrace(Y, upright("low")) + underbrace(I cos \( F_(s c) t \) + Q sin \( F_(s c) t \), upright("high"))
    $

    这里信号 $I$ 和 $Q$ 都与一个特定频率的副载波 $F_(s c)$ 相乘，其频率比 $Y$ 信号的最高频率还要高。这样在复合信号中 $Y$ 是低频信号，$I cos \( F_(s c) t \)$ 和 $Q sin \( F_(s c) t \)$ 都是高频信号。使用 *低通滤波器(low-pass filter)* 可以从复合信号中提取出这一低频信号 $Y$，剩余部分就是高频信号，记为 $C$，这就是色度信号。

    为了进一步提取信号 $Q$，我们将信号 $C$ 与解调载波 $2 sin \( F_(s c) t \)$ 相乘，可以得到：

    $
      C dot.op 2 sin \( F_(s c) t \) & = 2 I sin \( F_(s c) t \) cos \( F_(s c) t \) + 2 Q sin^2 \( F_(s c) t \)\
      & = I sin \( 2 F_(s c) t \) - Q \( 1 - cos^2 \( F_(s c) t \) \)\
      & = Q - Q cos \( 2 F_(s c) t \) + I sin \( 2 F_(s c) t \)
    $

    在对其应用一个低通滤波器就可以提取得到 $Q$。（如果想要提取 $I$ 的话改为乘以 $2 cos \( F_(s c) t \)$ 即可。）
  ]
]

#slide2x([25], image("../public/merged-04/0025.jpg"), image("../public/translated-04/0025.jpg"))

#slide2x([26], image("../public/merged-04/0026.jpg"), image("../public/translated-04/0026.jpg"))

#slide2x([27], image("../public/merged-04/0027.jpg"), image("../public/translated-04/0027.jpg"))

#slide2x([28], image("../public/merged-04/0028.jpg"), image("../public/translated-04/0028.jpg"), crop: 0.76)

#slide2x([29], image("../public/merged-04/0029.jpg"), image("../public/translated-04/0029.jpg"), crop: 0.83)

#slide2x([30], image("../public/merged-04/0030.jpg"), image("../public/translated-04/0030.jpg"))


- *色彩下采样(chroma subsampling)* 的四种方法：
  - *4:4:4*：不进行子采样，所有像素均包含亮度和色度信息。
  - *4:2:2*：水平方向上色度分辨率减半，每 4 个亮度像素只存储 2 个色度值。
  - *4:1:1*：色度采样比 4:2:2 更少，每 4 个像素只存 1 个色度值。
  - *4:2:0*：水平和垂直方向均进行 2 倍采样，每 4 个像素中的色度信息最多存 1 个（常用于 JPEG 和 MPEG）。

#no-par-margin
#align(center, image("images/2025-03-28-18-00-46.png", width: 36%))

#slide2x([32], image("../public/merged-04/0032.jpg"), image("../public/translated-04/0032.jpg"))

#slide2x([33], image("../public/merged-04/0033.jpg"), image("../public/translated-04/0033.jpg"))

#slide2x([34], image("../public/merged-04/0034.jpg"), image("../public/translated-04/0034.jpg"), crop: 0.7)

#slide2x([35], image("../public/merged-04/0035.jpg"), image("../public/translated-04/0035.jpg"), crop: 0.7)

#slide2x([36], image("../public/merged-04/0036.jpg"), image("../public/translated-04/0036.jpg"))

#slide2x([37], image("../public/merged-04/0037.jpg"), image("../public/translated-04/0037.jpg"), crop: 0.9)

#slide2x([38], image("../public/merged-04/0038.jpg"), image("../public/translated-04/0038.jpg"))

#slide2x([39], image("../public/merged-04/0039.jpg"), image("../public/translated-04/0039.jpg"), crop: 0.9)

#slide2x([40], image("../public/merged-04/0040.jpg"), image("../public/translated-04/0040.jpg"), crop: 0.7)

#slide2x([42], image("../public/merged-04/0042.jpg"), image("../public/translated-04/0042.jpg"), crop: 0.9)

