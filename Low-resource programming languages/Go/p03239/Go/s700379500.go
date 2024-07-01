package main 

import (
  "fmt"
)

func main() {
  var n, a int
  fmt.Scan(&n, &a)

  c := make([]int ,n)
  t := make([]int ,n)
  for i := 0; i < n; i++ {
    var x, y int
    fmt.Scan(&x, &y)
    c[i] = x
    t[i] = y
  }  
  
  var ans, tmp int
  ans = 10000
  
  for i := 0; i < n; i++ {
    if t[i] <= a {
      tmp = c[i]   
      if ans > tmp {
        ans = tmp
      }
    }
  }
  
  if ans < 10000 {
    fmt.Println(ans)
  } else {
    fmt.Println("TLE")
  }
  
}
