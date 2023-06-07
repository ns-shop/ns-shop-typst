#import "template.typ": *
#import "cover.typ": *

#show: template

// --- cover
#cover()
#cover(border: false)

// --- set page number
#set page(numbering: "1")
#counter(page).update(1)
    
#include "pre.typ"
#include "chapter1.typ"
#include "chapter2.typ"
#include "chapter3.typ"

#h1("Tài liệu tham khảo", numbering: false)

#bibliography("refs/refs.yml", title: none)