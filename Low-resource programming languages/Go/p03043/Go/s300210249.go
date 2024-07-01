package main

import "fmt"

var n, k int
var ans float64

func main() {
  fmt.Scanf("%d%d", &n, &k)
  
  for i := 1; i <= n; i++ {
    p := 1/float64(n)
    if i >= k {
      ans += p
      continue
    }
    now := i
    for now < k {
      p /= 2
      now *= 2
    }
    ans += p
  }
  fmt.Println(ans)
}