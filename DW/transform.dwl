%dw 2.0
output application/json
---

// (payload splitBy "\n\n")map (sum($ splitBy "\n") as Number)then max($)

// here we used splitBy() fun
//Instead of splitting by "\n" try splitting by "\n\n" at first - to separate by paragraph
//After that we Used map() to go through each paragraph
//Next we Used sum() to add all the numbers in each paragraph
//Finally we Used max() to return the highest number from the array

 max((payload splitBy "\n\n") map (sum($ splitBy "\n") as Number))

// (payload splitBy "\n\n")map ((item) -> (sum(item splitBy "\n") as Number ))then max($)