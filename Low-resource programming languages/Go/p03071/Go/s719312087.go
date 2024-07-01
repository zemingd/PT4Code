package main

import "fmt"

func main() {

  var a,b int
  fmt.Scan(&a,&b)
  bigger := max(a,b)
  smaller := min(a,b)
  
  if bigger >= smaller+1 {
    fmt.Print(bigger * 2 -1 )
  }else {
    fmt.Print(bigger+smaller)
  }
  
}

func max(a,b int)  int {

  if a > b {
    return a
  } else {
    return b
  }
}

func min(a,b int)  int {

  if a < b {
    return a
  } else {
    return b
  }
}
