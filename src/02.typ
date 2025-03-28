#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fsundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://www.baidu.com",
    "Lecture 2. Graphics and Image Data Representation",
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

#slide2x([2], image("../public/merged-02/0002.jpg"), image("../public/translated-02/0002.jpg"), crop: 0.92)

#slide2x([3], image("../public/merged-02/0003.jpg"), image("../public/translated-02/0003.jpg"), crop: 0.76)

#slide2x([4], image("../public/merged-02/0004.jpg"), image("../public/translated-02/0004.jpg"), crop: 0.95)

- *1 位图像(1-bit image)*，也称为 *二值图像(binary image)* 或 *单色图像(monochrome image)*。
- 每个像素存储为单个位，通常 0 代表黑色，1 代表白色。

#no-par-margin
#align(center, image("images/2025-03-28-15-04-22.png", width: 30%))

#slide2x([5], image("../public/merged-02/0005.jpg"), image("../public/translated-02/0005.jpg"), crop: 0.56)

#slide2x([6], image("../public/merged-02/0006.jpg"), image("../public/translated-02/0006.jpg"), crop: 0.92)

#example[*计算 1 位图像的文件大小*。见上页。]

#slide2x([8], image("../public/merged-02/0008.jpg"), image("../public/translated-02/0008.jpg"), crop: 0.9)

#slide2x([9], image("../public/merged-02/0009.jpg"), image("../public/translated-02/0009.jpg"), crop: 0.95)

- 每个像素用单个 *字节(byte)* 表示 *灰度值(gray value)*，范围为 0 到 255。
- #strong[位图(bitmap)];：整个图像可以被看做是一个二维像素值数组，因此也被称为位图。

#slide2x([10], image("../public/merged-02/0010.jpg"), image("../public/translated-02/0010.jpg"), crop: 0.9)

- *位平面(bitplane)*：将图像中所有像素的处于同一位位置的比特提取出来，组成一个新的二值图像 (黑白图像) ，就是一个 1 位位平面。
  - 8 位灰度图像可以看作是 8 个 1 位的集合。所有位平面共同构成一个字节，存储 $0 tilde.op 255$ 之间的灰度值。

#slide2x([11], image("../public/merged-02/0011.jpg"), image("../public/translated-02/0011.jpg"), crop: 0.85)

#example[*计算 8 位图像的文件大小*。见上页。]

#topic("抖动", blue)[
  #slide2x([12], image("../public/merged-02/0012.jpg"), image("../public/translated-02/0012.jpg"), crop: 0.9)

  #slide2x([13], image("../public/merged-02/0013.jpg"), image("../public/translated-02/0013.jpg"), crop: 0.7)

  - 为了在 1-bit 打印机上打印灰度图像，通常可以使用 #strong[抖动(dithering)] 技术。
    - 抖动技术的核心思想是将 #strong[强度分辨率(intensity resolution)] 转换为 #strong[空间分辨率(spatial resolution)]——即用更大的图案（$N times N$ 的矩阵）替换像素值，使得打印点的数量近似于模拟 #strong[半色调打印(halftone printing)] 中使用的不同大小的墨水圆盘。
    - 一个 $N times N$ 矩阵可以表示 $N^2 + 1$ 级强度级别，正如图所示：$2 times 2$ 图案可以表示五个强度级别。

  #no-par-margin
  #align(center, image("images/2025-03-28-15-05-17.png", width: 32%))

  #slide2x([14], image("../public/merged-02/0014.jpg"), image("../public/translated-02/0014.jpg"))

  - 最直接的尝试是根据强度级别，用 $N times N$ 点矩阵替换每个像素（如果强度 \> 抖动矩阵条目，则在该条目位置打印一个“开”点）。以使用 $2 times 2$ 为例，由于 $256 > 2 times 2 + 1$，我们需要先把强度划分成 $5$ 个级别，分别对应上面的 $4 \, 3 \, 2 \, 1 \, 0$ 的矩阵，逐像素进行替换即可。
  - 注意直接使用这样的方法需要额外存储一个 $N times N$ 倍大小的 1-bit 图片，带来了额外的存储开销。

  #slide2x([15], image("../public/merged-02/0015.jpg"), image("../public/translated-02/0015.jpg"))

  - *有序抖动(ordered dithering)* 算法通过引入一个抖动矩阵，打印图片时对于每个像素点进行处理，仅当抖动矩阵对应位置的数值大于强度时，才打印，这样就不需要额外的存储空间（相当于是把比较的步骤移到了打印时进行）。上页中是 $5 times 5$ 的标准抖动矩阵，和灰度值为 15 时的打印效果。

  #slide2x([16], image("../public/merged-02/0016.jpg"), image("../public/translated-02/0016.jpg"))

  - 一个有序抖动算法的伪代码演示。

  #slide2x([17], image("../public/merged-02/0017.jpg"), image("../public/translated-02/0017.jpg"), crop: 0.7)

  #example[
    #strong[
      使用 $300 times 300$ DPI 的打印机在一张 $12.8 times 9.6$ inch 的纸张上打印 $240 times 180 times 8$ bit 的图像，问每个像素点的尺寸应该是多少（即抖动矩阵的大小可以是多少）。
    ]

    - DPI = dots per inch $=>$ 整张图片的总点数为 $(300 times 12.8) times (300 times 9.6) = 3480 times 2880$ dots。
    - 分别除以原图像的宽和高，得到一个像素可以对应多少个点 $=>$ $(3840 "/" 240) times (2880 "/" 180) = 16 times 16 = 256$
  ]

  #slide2x([18], image("../public/merged-02/0018.jpg"), image("../public/translated-02/0018.jpg"))

  #slide2x([19], image("../public/merged-02/0019.jpg"), image("../public/translated-02/0019.jpg"), crop: 0.85)
]


#slide2x([21], image("../public/merged-02/0021.jpg"), image("../public/translated-02/0021.jpg"))

- *24 位彩色图像(24-bit color image)*：每个像素使用三个字节，分别代表 #strong[红(red, R)];、#strong[绿(green, G)];、#strong[蓝(blue, B)] 三个颜色分量。
  - 每个颜色分量的值范围从 0 到 255，即每个像素是三个颜色分量的灰度值的组合。
  - 许多 24 位彩色图像实际上存储为 32 位图像，通过引入一个额外的 #strong[Alpha 通道] 值指示特殊效果信息，例如 #strong[透明度(transparency flag)];。

#slide2x([22], image("../public/merged-02/0022.jpg"), image("../public/translated-02/0022.jpg"))

- #strong[半透明(Semi-transparency)] 图像颜色计算方法：

#no-par-margin
$
upright("半透明图像颜色") = upright("源图像颜色") times \( 100 % - upright("透明度") \) + upright("背景图像颜色") times upright("透明度")
$

#slide2x([26], image("../public/merged-02/0026.jpg"), image("../public/translated-02/0026.jpg"), crop: 0.85)

#slide2x([27], image("../public/merged-02/0027.jpg"), image("../public/translated-02/0027.jpg"), crop: 0.92)

- #strong[8 位彩色图像(8-bit color image)] 也称为 #strong[256 色图像(256-colors image)];。

#topic("颜色查找表(LUT)", green)[
  #slide2x([28], image("../public/merged-02/0028.jpg"), image("../public/translated-02/0028.jpg"), crop: 0.94)

  <bit-color-image-1>
  - *颜色查找表(color lookup table, LUT)*（也称为 *调色板(palette)*）技术：每个像素存储的是一个索引而不是真实的颜色值，需要在 LUT 中查询真是的颜色值。
  - 通常选择最重要的 256 种颜色构建 LUT，这可以通过聚类方法或 *中位切割算法(Median-cut Algorithm)* 实现。

  #slide2x([29], image("../public/merged-02/0029.jpg"), image("../public/translated-02/0029.jpg"), crop: 0.72)

  #slide2x([30], image("../public/merged-02/0030.jpg"), image("../public/translated-02/0030.jpg"), crop: 0.8)

  - 应用：通过 LUT 将灰度的医学图像转化为彩色图像。

  #slide2x([31], image("../public/merged-02/0031.jpg"), image("../public/translated-02/0031.jpg"))

  #slide2x([32], image("../public/merged-02/0032.jpg"), image("../public/translated-02/0032.jpg"))

  #slide2x([33], image("../public/merged-02/0033.jpg"), image("../public/translated-02/0033.jpg"), crop: 0.95)

  - 最直接的方法：直接按照 RGB 分配。
    - 人眼对 #strong[红色(R)] 和 #strong[绿色(G)] 比对 #strong[蓝色(B)] 更敏感，可以为 R 分配 3 位，G 分配 3 位，B 分配 2 位，总共 8 位。
    - 通过截断处理，如 R 和 G 从 8 位缩小到 3 位，通过将其除以 32（$256 \/ 8 = 32$）然后截断得到 3 位的索引值。这是一种均匀分配。
    - 下面是一个直接分配的示例。

  #slide2x([34], image("../public/merged-02/0034.jpg"), image("../public/translated-02/0034.jpg"), crop: 0.92)

  #slide2x([36], image("../public/merged-02/0036.jpg"), image("../public/translated-02/0036.jpg"))

  #slide2x([37], image("../public/merged-02/0037.jpg"), image("../public/translated-02/0037.jpg"))

  - #strong[聚类(clustering)] 方法可以帮我们找到更合适的 LUT，常见的聚类方法有 K-Means 和 Median Cut。
  - #strong[中值切割(Median Cut)] 算法：循环 8 轮，每轮根据 R,G,B 三个维度上的颜色范围（最大值 $-$ 最小值）选择范围跨度最大的进行切分，通过从这一维度的中位数位置切开，进行中值切割，并递归这一过程。
    - 中值切割算法相对于 K-Means 速度更快但是质量略差，也可以结合两者以获得高效且高质量的 LUT 算法。
    - 下面是一个中值切割算法的实例。

  #slide2x([38], image("../public/merged-02/0038.jpg"), image("../public/translated-02/0038.jpg"))

  #slide2x([39], image("../public/merged-02/0039.jpg"), image("../public/translated-02/0039.jpg"), crop: 0.9)
]

#slide2x([40], image("../public/merged-02/0040.jpg"), image("../public/translated-02/0040.jpg"), crop: 0.8)

#slide2x([42], image("../public/merged-02/0042.jpg"), image("../public/translated-02/0042.jpg"), crop: 0.86)

- #strong[图形交换格式(Graphics Interchange Format, GIF)];。

#slide2x([43], image("../public/merged-02/0043.jpg"), image("../public/translated-02/0043.jpg"), crop: 0.87)

- GIF 图像使用 #strong[LZW(Lempel-Ziv-Welch)] 压缩算法。这是一种 #strong[无损压缩(lossless compression)] 算法；对于连续色调图像，压缩率约为 50%。
- GIF 图像最多支持于 8 位（256 色）图像。

#slide2x([44], image("../public/merged-02/0044.jpg"), image("../public/translated-02/0044.jpg"), crop: 0.6)

- GIF 图像以 #strong[隔行扫描(interlacing)] 的方式存储，可以通过四遍扫描渐进显示图像。
- #strong[GIF89a] 支持动画和 #strong[透明色(transparent color)];。

#slide2x([45], image("../public/merged-02/0045.jpg"), image("../public/translated-02/0045.jpg"))

#slide2x([46], image("../public/merged-02/0046.jpg"), image("../public/translated-02/0046.jpg"))

#slide2x([48], image("../public/merged-02/0048.jpg"), image("../public/translated-02/0048.jpg"), crop: 0.9)

- #strong[联合图像专家组(Joint Photographic Experts Group, JPEG)] 图片允许用户设置所需的 #strong[质量级别(quality level)] 或 #strong[压缩比(compression ratio)];（输入大小除以输出大小）。

#no-par-margin
#callout(
  width: 80%,
  grid(
    columns: (1fr, 1fr, 1fr),
    align(center, image("images/2025-03-28-15-08-14.png", width: 100%)),
    align(center, image("images/2025-03-28-15-08-24.png", width: 100%)),
    align(center, image("images/2025-03-28-15-08-31.png", width: 100%)),
  ),
)

#slide2x([52], image("../public/merged-02/0052.jpg"), image("../public/translated-02/0052.jpg"), crop: 0.88)

- BMP 文件有三种存储形式：原始数据、BI-RLE8、BI-RLE4。
- 其中 #strong[游程编码(Run Length Encoding, RLE)] 是用于 BMP 图像的压缩算法。

#slide2x([53], image("../public/merged-02/0053.jpg"), image("../public/translated-02/0053.jpg"), crop: 0.8)

#slide2x([54], image("../public/merged-02/0054.jpg"), image("../public/translated-02/0054.jpg"))

#slide2x([55], image("../public/merged-02/0055.jpg"), image("../public/translated-02/0055.jpg"))

#slide2x([56], image("../public/merged-02/0056.jpg"), image("../public/translated-02/0056.jpg"), crop: 0.58)


