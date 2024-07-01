package main


import "fmt"


func max(a int, b int) int {
  if a > b {
    return a
  } else {
    return b
  }
}


func min(a int, b int) int {
  if a < b {
    return a
  } else {
    return b
  }
}


func main () {
  var a, b int
  fmt.Scanf("%d %d", &a, &b)

  if a != b {
    fmt.Println(2*max(a, b)-1)
  } else {
    fmt.Println(2*a)
  }
}
