package main

import(
      "fmt"
)

func main(){

  var n,y int
  cnt := 0
  fmt.Scan(&n,&y)
  for i:=0; i<=n; i++{//10000
    for j:=0; j<=n-i; j++{//5000
      k := n-i-j
      if i*10000+j*5000+k*1000 == y{
        fmt.Print(i);
        fmt.Print(" ");
        fmt.Print(j);
        fmt.Print(" ");
        fmt.Println(k);
        cnt++
      }
      if(cnt==1){
        break
      }
    }
    if(cnt==1){
      break;
    }
  }
  if(cnt==0){
    fmt.Println("-1 -1 -1")
  }
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