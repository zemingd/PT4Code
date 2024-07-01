package main

import(
      "fmt"
)

func main(){
  var n int
  ans := 0
  fmt.Scan(&n)
  for i:=0; i<n; i++ {
    var a int
    fmt.Scan(&a)
    cnt := 0
    for a%2==0 {
      a/=2
      cnt++;
    }
    ans+=cnt;
  }
  fmt.Println(ans)
}

//====  ↓↓↓ template functions ↓↓↓  ======================

func min(a, b int64) int64{
  if a < b {
    return a
  }
  return b
}

func max(a, b int64) int64{
  if a > b {
    return a
  }
  return b
}

func abs(x int64) int64{
  if x < 0 {
    return -x
  }
  return x
}

func gcd(a, b int64) int64{
  if b == 0 {
    return a
  }else{
    return gcd(b, a%b)
  }
}

func lcm(a, b int64) int64{
  return a*b/gcd(a, b);
}