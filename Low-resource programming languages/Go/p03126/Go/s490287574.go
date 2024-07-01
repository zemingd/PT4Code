package main

import (
	"fmt"
)

func main() {
	var N,M int
	fmt.Scan(&N,&M)
  ans := make([]bool,M)
  for i,_ := range ans{
    ans[i]=true
  }
  for i:=0;i<N;i++{
    var K int
    fmt.Scan(&K)
    temp := make([]bool,M)
    for j:=0;j<K;j++{
      var A int
      fmt.Scan(&A)
      temp[A-1]=true
    }
    for j:=0;j<M;j++{
      ans[j] = ans[j] && temp[j]
    }
  }
  count:=0
  for i:=0;i<M;i++{
    if ans[i]{
      count++
    }
  }
  fmt.Println(count)
	return
}
