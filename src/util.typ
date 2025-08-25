// its tipical for me to take a picture on my phone
// then paste it over into docs
// this just automates that
//
// what am not sure about is how it gets printed
// because the image could be bigger or smaller than the
// "page", the two times i checked, it seemed to be fine

#let img_to_pdf(pics_path) = {
  set page(
  margin: 0%,
  width: auto,
  height: auto,
  )

  if type(pics_path) == str {
    image(pics_path)
  }

  if type(pics_path) == array {
      for i in range(0, pics_path.len()) [
        #let file = pics_path.at(i)
        #image(file)

        #if i + 1 < pics_path.len(){
          pagebreak()
        }
    ]
  }
}
