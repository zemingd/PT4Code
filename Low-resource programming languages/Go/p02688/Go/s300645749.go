package main

import "fmt"

var N, K int
var d []int
var A[][]int
var x int

func input() {
  fmt.Scan(&N, &K)
  d = make([]int, K)
  A = make([][]int, K)
  
  for i:=0; i<K; i++ {
    fmt.Scan(&x)
    d[i] = x
    A[i] = make([]int, x)
    
    for j:=0; j<d[i]; j++ {
      fmt.Scan(&x)
      A[i][j] = x
    }
  }
}

func solve() {
  var ans int = 0
  for i:=1; i<=N; i++ {
    var have bool = false
    for _, v := range A {
      for _, p := range v {
        if p == i {
          have = true
        }
      }
    }
    if have==false {
        ans++
    }
  }
  fmt.Println(ans)
}

func main() {
  input()
  solve()
}