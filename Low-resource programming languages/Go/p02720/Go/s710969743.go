package main

import (
  "fmt"
  "math"
)

func main() {
  var N, ans int
  fmt.Scan(&N)
  num := 1
  for i:=0; i<N; {
    if isLunlun(num) {
      ans = num
      i++
    }
    num++
  }
  fmt.Println(ans)
  
}
func isLunlun(a int) bool {
  var b, c, diff int
  flag := true
  for i:=6; i>0; i-- {
    b=a/int(math.Pow(10,float64(i)))
    c=(a-b*int(math.Pow(10,float64(i))))/int(math.Pow(10,float64(i-1)))
    a=a-b*int(math.Pow(10,float64(i)))
    diff = b-c
    if b!=0 {
    if diff>1 || diff< -1 {
      flag = false
      break
    }
    }
  }
  return flag
}