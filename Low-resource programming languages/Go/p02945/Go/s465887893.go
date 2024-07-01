package main


import (
  "fmt"
  // "strings"
  // "strconv"
)


func max(a int, b int) int {
  if a > b {
    return a
  }
  return b
}


func main () {
  var a, b int
  fmt.Scanf("%d %d", &a, &b)
  fmt.Println(max(max(a+b, a-b), a*b))
}


