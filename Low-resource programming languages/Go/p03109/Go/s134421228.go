package main

import (
  "fmt"
  "strconv"
)

func main() {
  var S string
  var i int

  //S = "2019/10/20"
  //fmt.Println(S[5:7])
  fmt.Scan(&S)

  i, _ = strconv.Atoi(S[5:7])
  //fmt.Println(i)

  if i <=4 {
    fmt.Println("Heisei")
  } else {
    fmt.Println("TBD")
  }

}
