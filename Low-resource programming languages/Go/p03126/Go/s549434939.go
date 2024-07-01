package main

import "fmt"

func main() {
  var n, m, k, p, pass int
  fmt.Scan(&n, &m)

  // 箱の初期化
  counter := make([]int, m)
  for i := 0; i < m; i++ {
    counter[i] = 0
  }
  
  for j := 0; j < n; j++ {
    // n人目のlikeの個数
    fmt.Scan(&k)
    
    // k個分ループ
    for l := 0; l < k; l++ {
      fmt.Scan(&p)
      counter[p-1]++
    }
    
  }
  
  pass = 0
  for a := 0; a < m; a++ {
    if counter[a] == n {
      pass++
    }
  }
  
  fmt.Println(pass)
  
}
