#import "@preview/i-figured:0.2.4"
#import "style.typ": 字号

// 公式编号处理：研究生用半角括号 (1-1)，本科用全角括号 （1-1）
#let show-equation-handler(prefix, is-graduate) = {
  if is-graduate {
    i-figured.show-equation.with(
      numbering: (..nums) => numbering("(" + prefix + ")", ..nums),
    )
  } else {
    i-figured.show-equation.with(
      numbering: (..nums) => [（#numbering(prefix, ..nums)）],
    )
  }
}

