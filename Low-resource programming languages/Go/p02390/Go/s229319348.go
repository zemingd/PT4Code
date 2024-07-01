package main

import ( "fmt" )

func main() {

  var i int
  fmt.Scanf("%d", &i)

  if i == 0 {
    fmt.Printf("0:0:0\n")
  } else {
    s := i % 60
    m := i / 60 % 60
    h := i / 60 / 60
    fmt.Printf("%d:%d:%d\n", h, m, s)
  }

}
