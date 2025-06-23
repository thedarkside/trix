Trix.config.textAttributes =
  bold:
    tagName: "strong"
    inheritable: true
    parser: (element) ->
      style = window.getComputedStyle(element)
      style["fontWeight"] is "bold" or style["fontWeight"] >= 600
  italic:
    tagName: "em"
    inheritable: true
    parser: (element) ->
      style = window.getComputedStyle(element)
      style["fontStyle"] is "italic"
  href:
    groupTagName: "a"
    parser: (element) ->
      {attachmentSelector} = Trix.AttachmentView
      matchingSelector = "a:not(#{attachmentSelector})"
      if link = Trix.findClosestElementFromNode(element, {matchingSelector})
        link.getAttribute("href")
  strike:
    tagName: "del"
    inheritable: true
  cta:
    className: "cta"
    inheritable: false
  frozen:
    style: { "backgroundColor": "highlight" }

  fgColor1:
    style: { color: "rgb(31, 181, 143)" }
    inheritable: true
    parser: (e) -> e.style.color is "rgb(31, 181, 143)"

  fgColor2:
    style: { color: "rgb(212, 67, 51)" }
    inheritable: true
    parser: (e) -> e.style.color is "rgb(212, 67, 51)"

  fgColor3:
    style: { color: "rgb(255, 192, 67)" }
    inheritable: true
    parser: (e) -> e.style.color is "rgb(255, 192, 67)"

  fgColor4:
    style: { color: "rgb(204, 204, 204)" }
    inheritable: true
    parser: (e) -> e.style.color is "rgb(204, 204, 204)"

  fgColor5:
    style: { color: "rgb(39, 110, 241)" }
    inheritable: true
    parser: (e) -> e.style.color is "rgb(39, 110, 241)"

  bgColor1:
    style: { backgroundColor: "rgb(31, 181, 143)" }
    inheritable: true
    parser: (e) -> e.style.backgroundColor is "rgb(31, 181, 143)"

  bgColor2:
    style: { backgroundColor: "rgb(212, 67, 51)" }
    inheritable: true
    parser: (e) -> e.style.backgroundColor is "rgb(212, 67, 51)"

  bgColor3:
    style: { backgroundColor: "rgb(255, 192, 67)" }
    inheritable: true
    parser: (e) -> e.style.backgroundColor is "rgb(255, 192, 67)"

  bgColor4:
    style: { backgroundColor: "rgb(204, 204, 204)" }
    inheritable: true
    parser: (e) -> e.style.backgroundColor is "rgb(204, 204, 204)"

  bgColor5:
    style: { backgroundColor: "rgb(39, 110, 241)" }
    inheritable: true
    parser: (e) -> e.style.backgroundColor is "rgb(39, 110, 241)"
