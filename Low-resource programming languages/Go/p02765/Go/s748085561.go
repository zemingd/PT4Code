package main

import (
  "fmt"
)

func main() {
  var n,r,naibu int
  fmt.Scan(&n)
  fmt.Scan(&r)

  if n>10 {
    naibu = r
  } else {
    naibu = r+100*(10-n)
  }
  fmt.Println(naibu)
}
