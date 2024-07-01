package main

import (
  "fmt"
)

func check_fact(i int, j int) uint{ //i*2**k がjを初めて超えるkを求める
  var k uint
  k = 0
  // fmt.Println(i,j)
  for {
    // fmt.Println(k)
    if i*(2<<k) >= j{
      // fmt.Println(i*(2<<k),j)
      // fmt.Println(k)
      return k+1
    }
    k++

  }
}

func main(){
  var N, K int
  fmt.Scan(&N, &K)

  // fmt.Println(check_fact(1,17))
  var result float64
  if N < K{
    for i:=1; i<=N; i++{
      k := check_fact(i, K)
      // fmt.Println(i,k)
      // fmt.Println(1/float64((2<<(k-1))*N))
      result += 1/float64((2<<(k-1))*N)
    }
    fmt.Println(result)
  }else{
    for i:=1; i<K; i++{
      k := check_fact(i, K)
      // fmt.Println(i,k)
      // fmt.Println(1/float64((2<<(k-1))*N))
      result += 1/float64((2<<(k-1))*N)
    }
    result += float64(N-K+1)/float64(N)
    fmt.Println(result)
  }
}
