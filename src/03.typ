#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://mem.ac/",
    "Lecture 3. Color in Image and Video",
  ),
  authors: (
    (
      name: "memset0",
      email: "memset0@outlook.com",
      link: "https://mem.ac/",
    ),
  ),
  semester: "Spring-Summer 2025",
  date: "February 25, 2025",
  page-margin: (left: 16mm, right: 16mm, top: 4mm, bottom: 12mm),
  show-header: false,
)

#slide-width.update(x => 983)
#slide-height.update(x => 677)

#slide2x([2], image("../public/merged-03/0002.jpg"), image("../public/translated-03/0002.jpg"), crop: 0.5)

#slide2x([3], image("../public/merged-03/0003.jpg"), image("../public/translated-03/0003.jpg"), crop: 0.85)

#slide2x([4], image("../public/merged-03/0004.jpg"), image("../public/translated-03/0004.jpg"))

- #strong[光(light)] 是一种#strong[电磁波(electromagnetic
  wave)];，其颜色由#strong[波长(wavelength)] 决定。

#slide2x([5], image("../public/merged-03/0005.jpg"), image("../public/translated-03/0005.jpg"), cb: 7, ct: 3, header: false)

- #strong[分光光度计(spectrophotometer)];：一种用于测量可见光的设备，它通过衍射光栅（一种刻有规则纹路的表面）反射光线，将不同波长的光分散开来。

#slide2x([6], image("../public/merged-03/0006.jpg"), image("../public/translated-03/0006.jpg"), header: false, ct: 3)

- #strong[光谱功率分布(Spectral Power Distribution, SPD)]：在每个波长上的相对功率分布，用 $E(lambda)$ 表示。

#slide2x([7], image("../public/merged-03/0007.jpg"), image("../public/translated-03/0007.jpg"), crop: 0.9, header: false, ct: 3)

- *人类视觉(human vision)* 的原理：像相机一样，通过将图像聚焦到 *视网膜(retina)* 上的 *晶状体(lens)* 上。

#slide2x([8], image("../public/merged-03/0008.jpg"), image("../public/translated-03/0008.jpg"), header: false, ct: 3)

#slide2x([9], image("../public/merged-03/0009.jpg"), image("../public/translated-03/0009.jpg"), header: false)

- 人眼的 *光谱敏感度(spectral sensitivity)* ：在每个波长上的相对敏感度，用 $q(lambda)=display(mat(q_R(lambda), q_G(lambda), q_B(lambda)))^top$ 表示。
  - 对可见光谱的中间部分最为明暗。
  - 蓝色感受器的敏感度实际上比红色与绿色感受器小的多。

#slide2x([10], image("../public/merged-03/0010.jpg"), image("../public/translated-03/0010.jpg"), header: false, ct: 0.03, cb: 0.02)

#slide2x([11], image("../public/merged-03/0011.jpg"), image("../public/translated-03/0011.jpg"), header: false, cb: 0.04)

#note[
  *场景：人看光源*。

  只需要将 $E(lambda)$ 与 $q(lambda)$ 进行卷积即可：$display(cases(
		R = integral E(lambda) q_R(lambda) dif lambda,
		G = integral E(lambda) q_G(lambda) dif lambda,
		B = integral E(lambda) q_B(lambda) dif lambda,
	))$。
]

#slide2x([12], image("../public/merged-03/0012.jpg"), image("../public/translated-03/0012.jpg"), header: false, ct: 4, cb: 2)

#slide2x([13], image("../public/merged-03/0013.jpg"), image("../public/translated-03/0013.jpg"), header: false, ct: 4, cb: 1)

- *光谱反射率函数(surface spectral reflectance function)*：物体表面在每个波长上的反射率，用 $S(lambda)$ 表示。

#slide2x([14], image("../public/merged-03/0014.jpg"), image("../public/translated-03/0014.jpg"), header: false, cb: 8, ct: 3)

#note[
  *场景：人看物体*。

  除了光源的 $E(lambda)$ 和人眼的 $q(lambda)$ 之外，还需要卷上在物体表面反射导致的 $S(lambda)$：
  $
    important(display(cases(
		R = integral E(lambda) q_R(lambda) S(lambda) dif lambda,
		G = integral E(lambda) q_G(lambda) S(lambda) dif lambda,
		B = integral E(lambda) q_B(lambda) S(lambda) dif lambda,
	)))
  $
]

#slide2x([15], image("../public/merged-03/0015.jpg"), image("../public/translated-03/0015.jpg"), crop: 0.8, header: false, ct: 3, cb: 2)

#topic("伽马校正", blue)[
  #slide2x([16], image("../public/merged-03/0016.jpg"), image("../public/translated-03/0016.jpg"), cb: 3)

  #slide2x([17], image("../public/merged-03/0017.jpg"), image("../public/translated-03/0017.jpg"), header: false, cb: 7, ct: 5)

  - *Gamma 矫正* 的动机：*阴极射线管(CRT)* 输出的光线强度与驱动电压非线性关系，而是与电压 $R$ 的 $gamma$ 次方成正比：$important(L prop R^gamma)$。

  #slide2x([18], image("../public/merged-03/0018.jpg"), image("../public/translated-03/0018.jpg"), header: false, cb: 8, ct: 4)

  - *Gamma 矫正* 的方法：在把电压信号送给 CRT 之前，先对其取 $1"/"gamma$ 次方以进行校正：$important(R'=R^(1"/"gamma))$

  #slide2x([19], image("../public/merged-03/0019.jpg"), image("../public/translated-03/0019.jpg"), header: false, ct: 0.06)

  - #boxed[注意：实施上面的方法需要将电压归一化到 $[0,1]$ 的范围内]。

  #slide2x([20], image("../public/merged-03/0020.jpg"), image("../public/translated-03/0020.jpg"), header: false, cb: 0.08)

  #slide2x([21], image("../public/merged-03/0021.jpg"), image("../public/translated-03/0021.jpg"), header: false, cb: 0.08)

  #slide2x([22], image("../public/merged-03/0022.jpg"), image("../public/translated-03/0022.jpg"), header: false)

  - 不计算指数函数——使用分段线性函数进行近似。这是一种方法：
  #no-par-margin
  $
    R'_"SMPTE" = display(cases(
			0\,&quad R < 0.018,
			(1.099 R)^(0.45) - 0.099\,&quad R >= 0.018
		))
  $
]

#slide2x([23], image("../public/merged-03/0023.jpg"), image("../public/translated-03/0023.jpg"), cb: 5)

#slide2x([24], image("../public/merged-03/0024.jpg"), image("../public/translated-03/0024.jpg"), header: false, ct: 2)

- *色度计实验(colorimeter experiment)*：一个理想实验，测量颜色是怎么通过三原色混合得来的。
  - 科学家发现自然界的部分颜色无法通过这种方法调出来——e.g. 可以通过讲上面的红灯移下来调色，这样计红光的强度为负值，这也是为什么下一页（P25）的图红色线可以到 $0$ 以下。

#slide2x([25], image("../public/merged-03/0025.jpg"), image("../public/translated-03/0025.jpg"), header: false)

#slide2x([26], image("../public/merged-03/0026.jpg"), image("../public/translated-03/0026.jpg"), header: false, cb: 0.1, ct: 4)

#slide2x([27], image("../public/merged-03/0027.jpg"), image("../public/translated-03/0027.jpg"), header: false, ct: 3, cb: 8)

#slide2x([28], image("../public/merged-03/0028.jpg"), image("../public/translated-03/0028.jpg"), header: false, cb: 5, ct: 2)

#slide2x([29], image("../public/merged-03/0029.jpg"), image("../public/translated-03/0029.jpg"), header: false, ct: 4, cb: 3)

#slide2x([30], image("../public/merged-03/0030.jpg"), image("../public/translated-03/0030.jpg"), header: false, ct: 18, cb: 3)

#slide2x([31], image("../public/merged-03/0031.jpg"), image("../public/translated-03/0031.jpg"), header: false, ct: 18, cb: 3)

#slide2x([32], image("../public/merged-03/0032.jpg"), image("../public/translated-03/0032.jpg"), cb: 0.056)

#slide2x([33], image("../public/merged-03/0033.jpg"), image("../public/translated-03/0033.jpg"), cb: 8)

- *韦伯定律(Weber's Law)*：人对灰度的感知是相对的，而不是绝对的——符合对数关系。

#slide2x([34], image("../public/merged-03/0034.jpg"), image("../public/translated-03/0034.jpg"), cb: 17, ct: 5, header: false)

- CIELAB 颜色模型引入 $1"/"3$ 次幂来近似对数关系，对 luminance、colorfulness 和 hue 三维进行建模。
  - 设计师在设计的时候往往会使用 CIELAB 颜色模型，做好之后再转化回 RGB。

#slide2x([35], image("../public/merged-03/0035.jpg"), image("../public/translated-03/0035.jpg"), header: false, ct: 8, cb: 5)

#slide2x([36], image("../public/merged-03/0036.jpg"), image("../public/translated-03/0036.jpg"), header: false, ct: 7, cb: 3)

#slide2x([37], image("../public/merged-03/0037.jpg"), image("../public/translated-03/0037.jpg"))

#slide2x([38], image("../public/merged-03/0038.jpg"), image("../public/translated-03/0038.jpg"), header: false)

#slide2x([39], image("../public/merged-03/0039.jpg"), image("../public/translated-03/0039.jpg"), crop: 0.6)

#slide2x([40], image("../public/merged-03/0040.jpg"), image("../public/translated-03/0040.jpg"))

#slide2x([41], image("../public/merged-03/0041.jpg"), image("../public/translated-03/0041.jpg"), cb: 3)

- *加法色(additive color)*：RGB 颜色模型是加法色，适用于光源 / CRT 显示器的情况。
- *减法色(subtractive color)*：CMY 颜色模型是减法色，适用于染料 / 打印机打印等反射自然光（白光）的情况。

#slide2x([42], image("../public/merged-03/0042.jpg"), image("../public/translated-03/0042.jpg"), cb: 12)

#slide2x([43], image("../public/merged-03/0043.jpg"), image("../public/translated-03/0043.jpg"), cb: 8)

- CMYK 颜色模型是在 CMY 的基础上，把黑色部分 $K=min{C,M,Y}$ 减掉的结果。

#slide2x([44], image("../public/merged-03/0044.jpg"), image("../public/translated-03/0044.jpg"), cb: 55)

#slide2x([45], image("../public/merged-03/0045.jpg"), image("../public/translated-03/0045.jpg"), header: false, cb: 10, ct: 2)

#slide2x([46], image("../public/merged-03/0046.jpg"), image("../public/translated-03/0046.jpg"), cb: 0.28)

#slide2x([47], image("../public/merged-03/0047.jpg"), image("../public/translated-03/0047.jpg"), header: false, cb: 0.07)

#slide2x([48], image("../public/merged-03/0048.jpg"), image("../public/translated-03/0048.jpg"), header: false)

#slide2x([49], image("../public/merged-03/0049.jpg"), image("../public/translated-03/0049.jpg"), cb: 8)

#slide2x([50], image("../public/merged-03/0050.jpg"), image("../public/translated-03/0050.jpg"), header: false, ct: 3, cb: 2)

#slide2x([51], image("../public/merged-03/0051.jpg"), image("../public/translated-03/0051.jpg"), header: false, ct: 11, cb: 9)

#slide2x([52], image("../public/merged-03/0052.jpg"), image("../public/translated-03/0052.jpg"), cb: 8)

