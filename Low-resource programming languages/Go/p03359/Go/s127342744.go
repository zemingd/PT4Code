package main

import(
  "fmt"
)

func main () {
  var a, b, ans int
  fmt.Scan(&a, &b)
  ans += a
  if a > b {
    fmt.Println(ans-1)
  }else{
    fmt.Println(ans)
  }
}