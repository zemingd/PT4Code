package main

import "fmt"

func main() {
  var N, M int
  fmt.Scanf("%d %d\n", &N, &M)
  arr := make([]int, N)
  for i := 0; i < N; i++ {
    arr[i] = 0
  }
  
  for i := 0; i < M; i++ {
    var d int
    fmt.Scanf("%d\n", &d)
    for j := 0; j < d; j++ {
      var a int
      fmt.Scanf("%d", &a)
      arr[a] = 1
    }
  }
  cnt := 0
  for i := 0; i < N; i++ {
    if arr[i] == 0 {
      cnt++
    }
  }
  fmt.Println(cnt)
}
