#import "../template.typ": *

#show: project.with(
  course: "Fundamentals of Multimedia",
  course_fullname: "Fundamentals of Multimedia",
  course_code: "CS2090M",
  title: link(
    "https://mem.ac/",
    "Lecture 6. Lossless Compression Algorithms",
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

#slide-width.update(x => 983)
#slide-height.update(x => 677)

#slide2x([2], image("../public/merged-06/0002.jpg"), image("../public/translated-06/0002.jpg"), cb: 0.08)

#slide2x([3], image("../public/merged-06/0003.jpg"), image("../public/translated-06/0003.jpg"), cb: 0.53)

#slide2x([4], image("../public/merged-06/0004.jpg"), image("../public/translated-06/0004.jpg"), crop: 0.95)

- *无损编码(lossless coding)*：压缩和解压缩过程均不会导致信息丢失的编码方式。

#slide2x([5], image("../public/merged-06/0005.jpg"), image("../public/translated-06/0005.jpg"), crop: 0.92)

- *压缩率(compression ratio)*：$"压缩前大小" "/" "压缩后大小"$

#slide2x([6], image("../public/merged-06/0006.jpg"), image("../public/translated-06/0006.jpg"), crop: 0.83)

- *熵(entropy)* 的计算公式：$important(display(eta = H(S) = sum_(i=1)^n p_i log_2 1/p_i = -sum_(i=1)^n p_i log_2 p_i))$，其中 $p_i$ 是 *符号(symbol)* $i$ 出现的概率。
  - 其中 $display(log_2 1/p_i)$ 就是单个字符所包含的信息量，一段信息的熵就是所有字符所包含的信息量之和。

#slide2x([7], image("../public/merged-06/0007.jpg"), image("../public/translated-06/0007.jpg"), header: false, crop: 0.83, ct: 0.07)

#example[
  设一段信息中字符 $n$ 出现的概率为 $1/32$，则 $n$ 的 *信息量(the amount of information)* 为是 $5 "bit"$，这意味这把 $n$ 编码至少需要 $5$ 个二进制位。
]

#slide2x([8], image("../public/merged-06/0008.jpg"), image("../public/translated-06/0008.jpg"), header: false, ct: 0.05, cb: 0.04)

#example[
  *求平均码长：*
  #no-par-margin
  - *4种状态，每种状态出现的概率为 $1/4$*：$4 times 1/4 times log_2 1/4 = 2 "bits"$。
  - *4种状态，第一种出现的概率为 $1/2$，其余三种出现的概率为 $1/6$*：$1/2 times log_2 1/2 + 3 times 1/6 times log_2 1/6 approx 1.79 "bits" < 2 "bits"$。

  *结论*：概率分布更为平坦时，熵更小；概率分布更集中时，熵更大。
]

#slide2x([9], image("../public/merged-06/0009.jpg"), image("../public/translated-06/0009.jpg"), header: false, ct: 0.02, cb: 0.04)

#slide2x([10], image("../public/merged-06/0010.jpg"), image("../public/translated-06/0010.jpg"), header: false, cb: 0.04, ct: 0.03)

#slide2x([11], image("../public/merged-06/0011.jpg"), image("../public/translated-06/0011.jpg"), header: false, ct: 0.06, cb: 0.07)

- 信息的熵规定了编码所需平均比特数的下界：$important(eta <= overline(l))$。
- 注意：后文介绍的除了游程编码之外的几种无损压缩算法都不是熵编码，不会受到平均码长的限制。

#slide2x([12], image("../public/merged-06/0012.jpg"), image("../public/translated-06/0012.jpg"), crop: 0.56)

#slide2x([13], image("../public/merged-06/0013.jpg"), image("../public/translated-06/0013.jpg"), crop: 0.9)

- *游程编码(run-length encoding)*：核心思想——将连续重复的符号用一个计数值和该符号表示。
  - 具体到实现可能有多种方式。

#slide2x([14], image("../public/merged-06/0014.jpg"), image("../public/translated-06/0014.jpg"), header: false, ct: 0.04, cb: 0.07)

- 一种游程编码的实现：记录字符和连续出现的次数。

#slide2x([15], image("../public/merged-06/0015.jpg"), image("../public/translated-06/0015.jpg"), header: false, ct: 0.1, cb: 0.05)

- 另一种游程编码的实现：记录 $0$ 出现的字符和下一个非 $0$ 字符。

#slide2x([16], image("../public/merged-06/0016.jpg"), image("../public/translated-06/0016.jpg"), crop: 0.91)

#topic("香农范诺编码", blue)[
  #slide2x([17], image("../public/merged-06/0017.jpg"), image("../public/translated-06/0017.jpg"), header: false, crop: 0.94)

  - *香农-范诺算法(Shannon-Fano Algorithm)*：每次按照符号出现概率从大到小排序，然后分成频率和大致相同的两个子集；递归直到只剩下一个符号。根据树形结构可以得到编码方式。
    - 香农-范诺算法的编码方式不唯一。

  #slide2x([18], image("../public/merged-06/0018.jpg"), image("../public/translated-06/0018.jpg"), header: false)

  #slide2x([19], image("../public/merged-06/0019.jpg"), image("../public/translated-06/0019.jpg"), header: false, ct: 0.02, cb: 0.05)
]

#slide2x([20], image("../public/merged-06/0020.jpg"), image("../public/translated-06/0020.jpg"), header: false, crop: 0.92)

- *哈夫曼编码(Huffman Coding)*：自底向上编码，每次合并两个出现概率最小的节点。

#slide2x([21], image("../public/merged-06/0021.jpg"), image("../public/translated-06/0021.jpg"), header: false)

#slide2x([22], image("../public/merged-06/0022.jpg"), image("../public/translated-06/0022.jpg"), header: false)

#slide2x([23], image("../public/merged-06/0023.jpg"), image("../public/translated-06/0023.jpg"), crop: 0.9, header: false)

#slide2x([24], image("../public/merged-06/0024.jpg"), image("../public/translated-06/0024.jpg"), header: false)

- *结论*：使用哈夫曼编码得到的平均码长 $overline(l)$ 严格小于 $eta + 1$。

#slide2x([25], image("../public/merged-06/0025.jpg"), image("../public/translated-06/0025.jpg"), header: false, crop: 0.94)

- *拓展霍夫曼编码(Extended Huffman Coding)*：可以将连续 $k$ 个字符合成一组并进行霍夫曼编码。

#slide2x([26], image("../public/merged-06/0026.jpg"), image("../public/translated-06/0026.jpg"), header: false, ct: 0.05, cb: 0.05)

- *结论*：使用拓展霍夫曼编码得到的平均码长 $overline(l)$ 严格小于 $eta + 1/k$，但这也要求符号表的大小为 $n^k$。

#slide2x([27], image("../public/merged-06/0027.jpg"), image("../public/translated-06/0027.jpg"), header: false, crop: 0.87)

- *自适应霍夫曼编码(Adaptive Huffman Coding)*（不要求，可以自行看书）：动态的编码-解码程序。

#slide2x([28], image("../public/merged-06/0028.jpg"), image("../public/translated-06/0028.jpg"), header: false, cb: 0.21, ct: 0.03)

#slide2x([29], image("../public/merged-06/0029.jpg"), image("../public/translated-06/0029.jpg"), header: false, crop: 0.82, ct: 0.02)

#slide2x([30], image("../public/merged-06/0030.jpg"), image("../public/translated-06/0030.jpg"), header: false, cb: 0.09, ct: 0.03)

#slide2x([31], image("../public/merged-06/0031.jpg"), image("../public/translated-06/0031.jpg"), header: false)

#slide2x([32], image("../public/merged-06/0032.jpg"), image("../public/translated-06/0032.jpg"), header: false, crop: 0.97)

#slide2x([33], image("../public/merged-06/0033.jpg"), image("../public/translated-06/0033.jpg"), header: false, crop: 0.8)

#slide2x([34], image("../public/merged-06/0034.jpg"), image("../public/translated-06/0034.jpg"), header: false, crop: 0.95, ct: 0.04)

#slide2x([35], image("../public/merged-06/0035.jpg"), image("../public/translated-06/0035.jpg"), header: false, crop: 0.95)

#slide2x([36], image("../public/merged-06/0036.jpg"), image("../public/translated-06/0036.jpg"), header: false, crop: 0.8)

#slide2x([37], image("../public/merged-06/0037.jpg"), image("../public/translated-06/0037.jpg"), crop: 0.72)

#topic("LZW编码", blue)[
  #slide2x([38], image("../public/merged-06/0038.jpg"), image("../public/translated-06/0038.jpg"), crop: 0.85, header: false)

  - *LZW 编码* 是一种基于字典的编码方式。LZW 编码器和解码器在接受数据时动态构建字典。
  - LZW 编码的具体算法流程参见 P39 和 P41 的例子：
    - $S$ 表示当前编码器维护的尚未输出的字符串。每次读入新的字符 $c$：
      - 如果 $S+c$ 在字典中，则令 $S=S+c$（不输出）
      - 否则输出 $S$ 在字典中的编码，并将 $S+c$ 加入字典，随后令 $S=c$。

  #slide2x([39], image("../public/merged-06/0039.jpg"), image("../public/translated-06/0039.jpg"), header: false, crop: 0.9)

  #slide2x([40], image("../public/merged-06/0040.jpg"), image("../public/translated-06/0040.jpg"), header: false, crop: 0.95)

  #slide2x([41], image("../public/merged-06/0041.jpg"), image("../public/translated-06/0041.jpg"), header: false)

  - 可以观察到，“输出”和“将新的编码加入字典”两个动作必定同时发生或不发生。

  #slide2x([42], image("../public/merged-06/0042.jpg"), image("../public/translated-06/0042.jpg"), header: false, cb: 0.07, ct: 0.03)

  #slide2x([43], image("../public/merged-06/0043.jpg"), image("../public/translated-06/0043.jpg"), header: false)

  #slide2x([44], image("../public/merged-06/0044.jpg"), image("../public/translated-06/0044.jpg"), header: false, crop: 0.92)
]

#slide2x([45], image("../public/merged-06/0045.jpg"), image("../public/translated-06/0045.jpg"), header: false, crop: 0.94)

#slide2x([46], image("../public/merged-06/0046.jpg"), image("../public/translated-06/0046.jpg"), header: false, cb: 0.06)

#topic("算术编码", blue)[
  #slide2x([47], image("../public/merged-06/0047.jpg"), image("../public/translated-06/0047.jpg"), crop: 0.9)

  #slide2x([48], image("../public/merged-06/0048.jpg"), image("../public/translated-06/0048.jpg"), header: false, crop: 0.9)

  - 算术编码的编码方式：根据每个字符出现的概率将编码区间分割为若干子区间（如 P49 所示），之后从 $[0,1)$ 开始递归执行：每次选出待编码字符的对应区间，将其所为剩余字符的编码区间，#boxed[递归]执行（参见下图）。递归完成后输出一个在区间内的（二进制）小数表示当前字符的编码。

  #no-par-margin
  #align(center, image("images/2025-03-29-18-32-43.png", width: 50%))

  #slide2x([49], image("../public/merged-06/0049.jpg"), image("../public/translated-06/0049.jpg"), header: false, crop: 0.95)

  #slide2x([51], image("../public/merged-06/0051.jpg"), image("../public/translated-06/0051.jpg"), header: false, cb: 0.03)

  #slide2x([52], image("../public/merged-06/0052.jpg"), image("../public/translated-06/0052.jpg"), header: false, crop: 0.9)

  #slide2x([53], image("../public/merged-06/0053.jpg"), image("../public/translated-06/0053.jpg"), header: false, crop: 0.93)

  #slide2x([54], image("../public/merged-06/0054.jpg"), image("../public/translated-06/0054.jpg"), header: false, crop: 0.81, ct: 0.05)
]

#slide2x([55], image("../public/merged-06/0055.jpg"), image("../public/translated-06/0055.jpg"), crop: 0.38)

#slide2x([56], image("../public/merged-06/0056.jpg"), image("../public/translated-06/0056.jpg"), crop: 0.72)

#slide2x([57], image("../public/merged-06/0057.jpg"), image("../public/translated-06/0057.jpg"), cb: 0.04)

- *差分编码(differential coding)* 的一个关键动机在于减小信息的熵。如图所示：

#no-par-margin
#align(center, image("images/2025-03-29-18-38-55.png", width: 36%))

#slide2x([59], image("../public/merged-06/0059.jpg"), image("../public/translated-06/0059.jpg"), cb: 0.04)

#slide2x([60], image("../public/merged-06/0060.jpg"), image("../public/translated-06/0060.jpg"), header: false)

#slide2x([61], image("../public/merged-06/0061.jpg"), image("../public/translated-06/0061.jpg"), header: false, crop: 0.82, ct: 0.02)

#slide2x([62], image("../public/merged-06/0062.jpg"), image("../public/translated-06/0062.jpg"), header: false, crop: 0.92, ct: 0.02)
