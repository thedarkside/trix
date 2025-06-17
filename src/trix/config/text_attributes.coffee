colors = [
  "rgb(31, 181, 143)",
  "rgb(212, 67, 51)",
  "rgb(255, 192, 67)",
  "rgb(204, 204, 204)",
  "rgb(39, 110, 241)"
]

textAttributes =
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

for color, i in colors
  key = "fgColor#{i + 1}"
  textAttributes[key] =
    style: { color: color }
    inheritable: true
    parser: (e) -> e.style.color is color

for color, i in colors
  key = "bgColor#{i + 1}"
  textAttributes[key] =
    style: { backgroundColor: color }
    inheritable: true
    parser: (e) -> e.style.backgroundColor is color


Trix.config.textAttributes = textAttributes