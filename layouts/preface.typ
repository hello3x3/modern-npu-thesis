#import "../utils/style.typ": 字体, 字号
#import "../utils/header.typ": graduate-header-title, header-render
#import "../utils/custom-heading.typ": active-heading, heading-display

// 前言
#let preface(
  twoside: false,
  doctype: "master",
  fonts: (:),
  display-header: true,
  ..args,
  it,
) = {
  fonts = 字体 + fonts

  // 1. 设置页码逻辑
  // 注意：pagebreak 放在 set page 之前
  pagebreak(weak: true, to: if twoside { "odd" })
  counter(page).update(1)

  // 2. 页面全局设置
  set page(
    footer: context align(center)[
      #set text(size: 字号.小五)
      #counter(page).display("I")
    ],
  )

  // 3. 页眉设置
  // 我们直接在这里针对 it 应用 show rule，或者直接 set page
  show: it => {
    set page(
      header: context {
        if not display-header { return none }
        
        let loc = here()
        let is-graduate = (doctype == "master" or doctype == "doctor")
        
        // 默认显示当前章节
        let header-content = heading-display(active-heading(level: 1, prev: false))
        
        // 双面模式下的偶数页替换为校名
        if twoside and calc.rem(loc.page(), 2) == 0 and is-graduate {
          header-content = graduate-header-title(doctype)
        }
        
        if is-graduate {
          header-render(header-content, fonts: fonts)
        }
      }
    )
    it
  }

  it
}
