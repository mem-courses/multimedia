#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://www.baidu.com",
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
  page-margin: (left: 16mm, right: 16mm, top: 12mm, bottom: 12mm),
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
  sigma^2 = 1/N sum_(i=1)^N (x_n - y_n)^2
$
#no-par-margin

- *信噪比(signal-to-noise ratio, SNR)*：
#no-par-margin
$
  "SNR" = 10 log_10 (sigma^2_x)/(sigma^2_d)
$
#no-par-margin

- *PSNR*
#no-par-margin
$
  "PSNR" = 10 log_10 (x^2_"peak")/(sigma^2_d)
$
#no-par-margin

#slide2x([7], image("../public/merged-07/0007.jpg"), image("../public/translated-07/0007.jpg"), cb: 0.10)

== The Rate-Distortion Theory | 率失真理论

#slide2x([9], image("../public/merged-07/0009.jpg"), image("../public/translated-07/0009.jpg"), cb: 0.04)

#slide2x([10], image("../public/merged-07/0010.jpg"), image("../public/translated-07/0010.jpg"), cb: 0.01)

= Quantization | 量化

#slide2x([12], image("../public/merged-07/0012.jpg"), image("../public/translated-07/0012.jpg"), cb: 0.06)

#slide2x([13], image("../public/merged-07/0013.jpg"), image("../public/translated-07/0013.jpg"), cb: 0.01)

#slide2x([14], image("../public/merged-07/0014.jpg"), image("../public/translated-07/0014.jpg"))

#slide2x([15], image("../public/merged-07/0015.jpg"), image("../public/translated-07/0015.jpg"), cb: 0.01)

#slide2x([16], image("../public/merged-07/0016.jpg"), image("../public/translated-07/0016.jpg"), cb: 0.05)

#slide2x([17], image("../public/merged-07/0017.jpg"), image("../public/translated-07/0017.jpg"), cb: 0.01)

#slide2x([18], image("../public/merged-07/0018.jpg"), image("../public/translated-07/0018.jpg"), cb: 0.05)

#slide2x([19], image("../public/merged-07/0019.jpg"), image("../public/translated-07/0019.jpg"), cb: 0.04)

= Transform Coding | 变换编码

#slide2x([21], image("../public/merged-07/0021.jpg"), image("../public/translated-07/0021.jpg"))

#slide2x([22], image("../public/merged-07/0022.jpg"), image("../public/translated-07/0022.jpg"))

#slide2x([23], image("../public/merged-07/0023.jpg"), image("../public/translated-07/0023.jpg"), cb: 0.01)

#slide2x([24], image("../public/merged-07/0024.jpg"), image("../public/translated-07/0024.jpg"))

#slide2x([25], image("../public/merged-07/0025.jpg"), image("../public/translated-07/0025.jpg"), cb: 0.01)

#slide2x([26], image("../public/merged-07/0026.jpg"), image("../public/translated-07/0026.jpg"), cb: 0.01)

#slide2x([27], image("../public/merged-07/0027.jpg"), image("../public/translated-07/0027.jpg"))

#slide2x([28], image("../public/merged-07/0028.jpg"), image("../public/translated-07/0028.jpg"))

#slide2x([29], image("../public/merged-07/0029.jpg"), image("../public/translated-07/0029.jpg"))

#slide2x([30], image("../public/merged-07/0030.jpg"), image("../public/translated-07/0030.jpg"), cb: 0.03)

#slide2x([31], image("../public/merged-07/0031.jpg"), image("../public/translated-07/0031.jpg"), cb: 0.12)

#slide2x([32], image("../public/merged-07/0032.jpg"), image("../public/translated-07/0032.jpg"))

#slide2x([33], image("../public/merged-07/0033.jpg"), image("../public/translated-07/0033.jpg"), cb: 0.05)

#slide2x([34], image("../public/merged-07/0034.jpg"), image("../public/translated-07/0034.jpg"), cb: 0.05)

#slide2x([35], image("../public/merged-07/0035.jpg"), image("../public/translated-07/0035.jpg"))

#slide2x([36], image("../public/merged-07/0036.jpg"), image("../public/translated-07/0036.jpg"), cb: 0.04)

#slide2x([37], image("../public/merged-07/0037.jpg"), image("../public/translated-07/0037.jpg"), cb: 0.09)

#slide2x([38], image("../public/merged-07/0038.jpg"), image("../public/translated-07/0038.jpg"))

#slide2x([39], image("../public/merged-07/0039.jpg"), image("../public/translated-07/0039.jpg"), cb: 0.10)

#slide2x([40], image("../public/merged-07/0040.jpg"), image("../public/translated-07/0040.jpg"))

#slide2x([41], image("../public/merged-07/0041.jpg"), image("../public/translated-07/0041.jpg"))

#slide2x([42], image("../public/merged-07/0042.jpg"), image("../public/translated-07/0042.jpg"), cb: 0.13)

#slide2x([43], image("../public/merged-07/0043.jpg"), image("../public/translated-07/0043.jpg"))

#slide2x([44], image("../public/merged-07/0044.jpg"), image("../public/translated-07/0044.jpg"))

#slide2x([45], image("../public/merged-07/0045.jpg"), image("../public/translated-07/0045.jpg"), cb: 0.07)

#slide2x([46], image("../public/merged-07/0046.jpg"), image("../public/translated-07/0046.jpg"), cb: 0.12)

#slide2x([47], image("../public/merged-07/0047.jpg"), image("../public/translated-07/0047.jpg"), cb: 0.09)

#slide2x([48], image("../public/merged-07/0048.jpg"), image("../public/translated-07/0048.jpg"), cb: 0.03)

#slide2x([49], image("../public/merged-07/0049.jpg"), image("../public/translated-07/0049.jpg"), cb: 0.15)

#slide2x([50], image("../public/merged-07/0050.jpg"), image("../public/translated-07/0050.jpg"), cb: 0.01)

#slide2x([51], image("../public/merged-07/0051.jpg"), image("../public/translated-07/0051.jpg"), cb: 0.24)

#slide2x([52], image("../public/merged-07/0052.jpg"), image("../public/translated-07/0052.jpg"), cb: 0.01)

#slide2x([53], image("../public/merged-07/0053.jpg"), image("../public/translated-07/0053.jpg"), cb: 0.12)

#slide2x([54], image("../public/merged-07/0054.jpg"), image("../public/translated-07/0054.jpg"), cb: 0.05)

#slide2x([55], image("../public/merged-07/0055.jpg"), image("../public/translated-07/0055.jpg"))

#slide2x([56], image("../public/merged-07/0056.jpg"), image("../public/translated-07/0056.jpg"), cb: 0.07)

#slide2x([57], image("../public/merged-07/0057.jpg"), image("../public/translated-07/0057.jpg"), cb: 0.15)

#slide2x([58], image("../public/merged-07/0058.jpg"), image("../public/translated-07/0058.jpg"), ct: 0.41)

#slide2x([59], image("../public/merged-07/0059.jpg"), image("../public/translated-07/0059.jpg"), cb: 0.03)

#slide2x([60], image("../public/merged-07/0060.jpg"), image("../public/translated-07/0060.jpg"), cb: 0.03)

#slide2x([61], image("../public/merged-07/0061.jpg"), image("../public/translated-07/0061.jpg"))

#slide2x([62], image("../public/merged-07/0062.jpg"), image("../public/translated-07/0062.jpg"))

#slide2x([63], image("../public/merged-07/0063.jpg"), image("../public/translated-07/0063.jpg"))

#slide2x([64], image("../public/merged-07/0064.jpg"), image("../public/translated-07/0064.jpg"), cb: 0.01)

#slide2x([65], image("../public/merged-07/0065.jpg"), image("../public/translated-07/0065.jpg"))

#slide2x([66], image("../public/merged-07/0066.jpg"), image("../public/translated-07/0066.jpg"))

#slide2x([67], image("../public/merged-07/0067.jpg"), image("../public/translated-07/0067.jpg"))

#slide2x([68], image("../public/merged-07/0068.jpg"), image("../public/translated-07/0068.jpg"), cb: 0.04)

#slide2x([69], image("../public/merged-07/0069.jpg"), image("../public/translated-07/0069.jpg"), cb: 0.05)

