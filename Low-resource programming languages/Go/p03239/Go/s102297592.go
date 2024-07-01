package main

import(
      "fmt"
      "math"
)

func main(){
  var n,t,a,b int
  ans := math.MaxInt64
  fmt.Scan(&n,&t)

  for i := 0; i < n; i++ {
    fmt.Scan(&a,&b)
    if b <= t {
      ans = min(ans, a)
    }
  }

  if ans == math.MaxInt64 {
    fmt.Println("TLE")
  }else{
    fmt.Println(ans)
  }
}

func min(a, b int) int{
  if a < b {
    return a
  }
  return b
}