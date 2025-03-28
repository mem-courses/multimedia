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

#slide2x([11], image("../public/merged-04/0011.jpg"), image("../public/translated-04/0011.jpg"))

#slide2x([12], image("../public/merged-04/0012.jpg"), image("../public/translated-04/0012.jpg"))

#slide2x([13], image("../public/merged-04/0013.jpg"), image("../public/translated-04/0013.jpg"))

#slide2x([14], image("../public/merged-04/0014.jpg"), image("../public/translated-04/0014.jpg"))

#slide2x([15], image("../public/merged-04/0015.jpg"), image("../public/translated-04/0015.jpg"))

#slide2x([16], image("../public/merged-04/0016.jpg"), image("../public/translated-04/0016.jpg"))

#slide2x([17], image("../public/merged-04/0017.jpg"), image("../public/translated-04/0017.jpg"))

#slide2x([18], image("../public/merged-04/0018.jpg"), image("../public/translated-04/0018.jpg"))

#slide2x([19], image("../public/merged-04/0019.jpg"), image("../public/translated-04/0019.jpg"))

#slide2x([20], image("../public/merged-04/0020.jpg"), image("../public/translated-04/0020.jpg"))

#slide2x([21], image("../public/merged-04/0021.jpg"), image("../public/translated-04/0021.jpg"))

#slide2x([22], image("../public/merged-04/0022.jpg"), image("../public/translated-04/0022.jpg"))

#slide2x([23], image("../public/merged-04/0023.jpg"), image("../public/translated-04/0023.jpg"))

#slide2x([24], image("../public/merged-04/0024.jpg"), image("../public/translated-04/0024.jpg"))

#slide2x([25], image("../public/merged-04/0025.jpg"), image("../public/translated-04/0025.jpg"))

#slide2x([26], image("../public/merged-04/0026.jpg"), image("../public/translated-04/0026.jpg"))

#slide2x([27], image("../public/merged-04/0027.jpg"), image("../public/translated-04/0027.jpg"))

#slide2x([28], image("../public/merged-04/0028.jpg"), image("../public/translated-04/0028.jpg"), crop: 0.76)

#slide2x([29], image("../public/merged-04/0029.jpg"), image("../public/translated-04/0029.jpg"), crop: 0.83)

#slide2x([30], image("../public/merged-04/0030.jpg"), image("../public/translated-04/0030.jpg"))

#slide2x([31], image("../public/merged-04/0031.jpg"), image("../public/translated-04/0031.jpg"))

#slide2x([32], image("../public/merged-04/0032.jpg"), image("../public/translated-04/0032.jpg"))

#slide2x([33], image("../public/merged-04/0033.jpg"), image("../public/translated-04/0033.jpg"))

#slide2x([34], image("../public/merged-04/0034.jpg"), image("../public/translated-04/0034.jpg"), crop: 0.7)

#slide2x([35], image("../public/merged-04/0035.jpg"), image("../public/translated-04/0035.jpg"), crop: 0.7)

#slide2x([36], image("../public/merged-04/0036.jpg"), image("../public/translated-04/0036.jpg"))

#slide2x([37], image("../public/merged-04/0037.jpg"), image("../public/translated-04/0037.jpg"))

#slide2x([38], image("../public/merged-04/0038.jpg"), image("../public/translated-04/0038.jpg"))

#slide2x([39], image("../public/merged-04/0039.jpg"), image("../public/translated-04/0039.jpg"), crop: 0.9)

#slide2x([40], image("../public/merged-04/0040.jpg"), image("../public/translated-04/0040.jpg"), crop: 0.7)

#slide2x([42], image("../public/merged-04/0042.jpg"), image("../public/translated-04/0042.jpg"))

