#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fsundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://www.baidu.com",
    "Lecture 5. Basics of Digital Audio",
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

#slide2x([2], image("../public/merged-05/0002.jpg"), image("../public/translated-05/0002.jpg"), crop: 0.48)

#slide2x([3], image("../public/merged-05/0003.jpg"), image("../public/translated-05/0003.jpg"), crop: 0.94)

#slide2x([4], image("../public/merged-05/0004.jpg"), image("../public/translated-05/0004.jpg"), crop: 0.92)

#slide2x([5], image("../public/merged-05/0005.jpg"), image("../public/translated-05/0005.jpg"), crop: 0.4)

- 信号的 *数字化(digitization)*：将 *模拟信号(analog signal)* 转化为 *数字信号(digital signal)*。

#no-par-margin
#align(
  center,
  box(
    width: 60%,
    table(
      columns: (1.5fr, 1fr),
      [
        #align(center, image("images/2025-03-28-22-48-40.png", width: 100%))
        模拟信号
      ],
      [
        #align(center, image("images/2025-03-28-22-48-44.png", width: 100%))
        数字信号
      ],
    ),
  ),
)

#slide2x([7], image("../public/merged-05/0007.jpg"), image("../public/translated-05/0007.jpg"), crop: 0.9, header: false)

- 信号的 *量化(quantization)*：在 *幅度(amplitude)* 维度上进行采样。
  - *均匀采样(uniform sampling)*：等间距采样；
  - *非均匀采样(non-uniform sampling)*：不等间距采样，如 $mu$-law 规则。

#slide2x([8], image("../public/merged-05/0008.jpg"), image("../public/translated-05/0008.jpg"), header: false)

#slide2x([9], image("../public/merged-05/0009.jpg"), image("../public/translated-05/0009.jpg"), crop: 0.85, header: false)

#slide2x([10], image("../public/merged-05/0010.jpg"), image("../public/translated-05/0010.jpg"))

- 信号可以被分解为一系列正弦波的叠加。

#slide2x([11], image("../public/merged-05/0011.jpg"), image("../public/translated-05/0011.jpg"), header: false)

- 上页展示了一个以 1.5 倍频率采样而不能正确还原原信号的例子。

#slide2x([12], image("../public/merged-05/0012.jpg"), image("../public/translated-05/0012.jpg"), crop: 0.95, header: false)

#tip[
  - *奈奎斯特定理(Nyquist theorem)*：为了正确采样，*采样率(sampling)* 至少需要为信号中最大频率成分的两倍——形式化地，设频率下限为 $f_1$，频率上限为 $f_2$，则采样率至少为 $2(f_2 - f_1)$，称为 *奈奎斯特速率(Nyquist rate)*。

  - *奈奎斯特频率(Nyquist frequency)*：奈奎斯特速率的一半。
    - 由于无论如何都不可能回复高于奈奎斯特频率的频率，所以大多数系统中都有一个抗混叠滤波器。可以简单的理解为在还原信号时给待还原信号频率设置一个上限。
]

#slide2x([13], image("../public/merged-05/0013.jpg"), image("../public/translated-05/0013.jpg"), crop: 0.92)

- *信噪比(signal-to-noise ratio, SNR)*：正确信号的功率平方与噪声功率平方之比。
  - 通常以 dB 为单位进行测量，$10 upright("dB") = 1 upright("B")$，并用以 10 为低的对数来定义：

#no-par-margin
$
  important(
    "SNR" = 10 log_10 (V^2_"signal")/(V^2_"noise") = 20 log_10 (V_"signal")/(V_"noise") quad ("dB")
  )
$

#slide2x([14], image("../public/merged-05/0014.jpg"), image("../public/translated-05/0014.jpg"), crop: 0.84, header: false)

#slide2x([15], image("../public/merged-05/0015.jpg"), image("../public/translated-05/0015.jpg"), header: false)

#slide2x([16], image("../public/merged-05/0016.jpg"), image("../public/translated-05/0016.jpg"), crop: 0.93)

#slide2x([17], image("../public/merged-05/0017.jpg"), image("../public/translated-05/0017.jpg"), header: false)

#slide2x([18], image("../public/merged-05/0018.jpg"), image("../public/translated-05/0018.jpg"), header: false)

#slide2x([19], image("../public/merged-05/0019.jpg"), image("../public/translated-05/0019.jpg"))

#slide2x([20], image("../public/merged-05/0020.jpg"), image("../public/translated-05/0020.jpg"), header: false)

#slide2x([21], image("../public/merged-05/0021.jpg"), image("../public/translated-05/0021.jpg"), crop: 0.9, header: false)

#slide2x([22], image("../public/merged-05/0022.jpg"), image("../public/translated-05/0022.jpg"), header: false)

#slide2x([23], image("../public/merged-05/0023.jpg"), image("../public/translated-05/0023.jpg"), crop: 0.86)

#slide2x([24], image("../public/merged-05/0024.jpg"), image("../public/translated-05/0024.jpg"), crop: 0.8)

#slide2x([25], image("../public/merged-05/0025.jpg"), image("../public/translated-05/0025.jpg"), header: false)

#slide2x([26], image("../public/merged-05/0026.jpg"), image("../public/translated-05/0026.jpg"), crop: 0.94)

#slide2x([27], image("../public/merged-05/0027.jpg"), image("../public/translated-05/0027.jpg"), header: false)

#slide2x([28], image("../public/merged-05/0028.jpg"), image("../public/translated-05/0028.jpg"), header: false)

#slide2x([29], image("../public/merged-05/0029.jpg"), image("../public/translated-05/0029.jpg"), crop: 0.68, header: false)

#slide2x([30], image("../public/merged-05/0030.jpg"), image("../public/translated-05/0030.jpg"), crop: 0.47)

#slide2x([31], image("../public/merged-05/0031.jpg"), image("../public/translated-05/0031.jpg"))

#slide2x([32], image("../public/merged-05/0032.jpg"), image("../public/translated-05/0032.jpg"))

#slide2x([33], image("../public/merged-05/0033.jpg"), image("../public/translated-05/0033.jpg"), crop: 0.9, header: false)

#slide2x([34], image("../public/merged-05/0034.jpg"), image("../public/translated-05/0034.jpg"), crop: 0.85)

#slide2x([35], image("../public/merged-05/0035.jpg"), image("../public/translated-05/0035.jpg"), crop: 0.85)

#slide2x([36], image("../public/merged-05/0036.jpg"), image("../public/translated-05/0036.jpg"))

#slide2x([37], image("../public/merged-05/0037.jpg"), image("../public/translated-05/0037.jpg"))

#slide2x([38], image("../public/merged-05/0038.jpg"), image("../public/translated-05/0038.jpg"), header: false)

#slide2x([39], image("../public/merged-05/0039.jpg"), image("../public/translated-05/0039.jpg"), header: false)

#slide2x([40], image("../public/merged-05/0040.jpg"), image("../public/translated-05/0040.jpg"), header: false)

#slide2x([41], image("../public/merged-05/0041.jpg"), image("../public/translated-05/0041.jpg"), header: false)

#slide2x([42], image("../public/merged-05/0042.jpg"), image("../public/translated-05/0042.jpg"), header: false)

#slide2x([43], image("../public/merged-05/0043.jpg"), image("../public/translated-05/0043.jpg"), header: false)

#slide2x([44], image("../public/merged-05/0044.jpg"), image("../public/translated-05/0044.jpg"), header: false)

#slide2x([45], image("../public/merged-05/0045.jpg"), image("../public/translated-05/0045.jpg"))

#slide2x([46], image("../public/merged-05/0046.jpg"), image("../public/translated-05/0046.jpg"), header: false)

#slide2x([47], image("../public/merged-05/0047.jpg"), image("../public/translated-05/0047.jpg"))

#slide2x([48], image("../public/merged-05/0048.jpg"), image("../public/translated-05/0048.jpg"), header: false)

#slide2x([49], image("../public/merged-05/0049.jpg"), image("../public/translated-05/0049.jpg"), header: false)

#slide2x([50], image("../public/merged-05/0050.jpg"), image("../public/translated-05/0050.jpg"), header: false)

#slide2x([51], image("../public/merged-05/0051.jpg"), image("../public/translated-05/0051.jpg"), header: false)

#slide2x([52], image("../public/merged-05/0052.jpg"), image("../public/translated-05/0052.jpg"), header: false)

#slide2x([53], image("../public/merged-05/0053.jpg"), image("../public/translated-05/0053.jpg"))

#slide2x([54], image("../public/merged-05/0054.jpg"), image("../public/translated-05/0054.jpg"), header: false)

#slide2x([55], image("../public/merged-05/0055.jpg"), image("../public/translated-05/0055.jpg"), header: false)

#slide2x([56], image("../public/merged-05/0056.jpg"), image("../public/translated-05/0056.jpg"), header: false)

#slide2x([57], image("../public/merged-05/0057.jpg"), image("../public/translated-05/0057.jpg"), header: false)

#slide2x([58], image("../public/merged-05/0058.jpg"), image("../public/translated-05/0058.jpg"))

#slide2x([59], image("../public/merged-05/0059.jpg"), image("../public/translated-05/0059.jpg"), header: false)

#slide2x([60], image("../public/merged-05/0060.jpg"), image("../public/translated-05/0060.jpg"), header: false)

#slide2x([61], image("../public/merged-05/0061.jpg"), image("../public/translated-05/0061.jpg"))

