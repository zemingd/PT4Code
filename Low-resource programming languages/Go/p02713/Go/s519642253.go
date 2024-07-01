package main

import (
  "fmt"
)

func main(){
  var N, ans int
  fmt.Scan(&N)
  
  for i := 1; i<=N; i++ {
    for j := 1; j<=N; j++ {
      for k := 1; k<=N; k++ {
        ans += gcd(i,gcd(j,k))
      }
    }
  }
  fmt.Println(ans)    
}

func gcd(a,b int) int {
  if b==0 {
    return a
  }
  return gcd(b,a%b)
}
