#import "../utils/custom-numbering.typ": with-numbering-format

// 附录布局
#let appendix(
  graduate: false,
  english-writing: false,
  it,
) = {
  let appendix-label = if english-writing {
    "Appendix "
  } else if not graduate {
    [附#h(0.7em)录]
  } else {
    "附录"
  }

  set heading(numbering: (..nums) => {
    let nums = nums.pos()
    if nums.len() == 1 {
      if not graduate {
        [#appendix-label]
      } else {
        [#appendix-label#numbering("A", nums.at(0))]
      }
    } else if nums.len() <= 3 {
      numbering("A.1", ..nums)
    }
  })
  counter(heading).update(0)

  show: with-numbering-format.with("A-1")

  it
}
