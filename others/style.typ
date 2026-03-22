#let 字号 = (
  初号: 42pt,
  小初: 36pt,
  一号: 26pt,
  小一: 24pt,
  二号: 22pt,
  小二: 18pt,
  三号: 16pt,
  小三: 15pt,
  四号: 14pt,
  中四: 13pt,
  小四: 12pt,
  五号: 10.5pt,
  小五: 9pt,
  六号: 7.5pt,
  小六: 6.5pt,
  七号: 5.5pt,
  小七: 5pt,
)

#let 字体 = (
  // 宋体，属于「有衬线字体」，一般可以等同于英文中的 Serif Font
  // 优先使用 Windows 系统字体：SimSun（宋体）、Times New Roman（英文）
  宋体: ((name: "Times New Roman", covers: "latin-in-cjk"), "SimSun", "NSimSun", "Songti SC", "STSongti", "Source Han Serif SC", "Source Han Serif", "Noto Serif CJK SC"),
  // 黑体，属于「无衬线字体」，一般可以等同于英文中的 Sans Serif Font
  // 优先使用 Windows 系统字体：SimHei（黑体）、Arial（英文）
  黑体: ((name: "Arial", covers: "latin-in-cjk"), "SimHei", "Heiti SC", "STHeiti", "Source Han Sans SC", "Source Han Sans", "Noto Sans CJK SC"),
  // 楷体
  // 优先使用 Windows 系统字体：KaiTi（楷体）
  楷体: ((name: "Times New Roman", covers: "latin-in-cjk"), "KaiTi", "Kaiti SC", "STKaiti", "FZKai-Z03S"),
  // 仿宋
  // 优先使用 Windows 系统字体：FangSong（仿宋）
  仿宋: ((name: "Times New Roman", covers: "latin-in-cjk"), "FangSong", "STFangSong", "FangSong SC", "FZFangSong-Z02S"),
  // 等宽字体，用于代码块环境，一般可以等同于英文中的 Monospaced Font
  // 优先使用 Windows 系统字体：Courier New（英文等宽）、SimHei（中文）
  等宽: ((name: "Courier New", covers: "latin-in-cjk"), "SimHei", "Heiti SC", "STHeiti", "Source Han Sans HW SC", "Source Han Sans HW", "Noto Sans Mono CJK SC"),
)