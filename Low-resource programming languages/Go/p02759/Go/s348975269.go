package main

import "fmt"

func main(){
  var N, M int
  
  fmt.Scanf("%d %d\n", &N, &M)
  
  arr := make([]int, N)
  for i := 0; i < N; i++ {
    arr[i] = -1
  }
  
  for i := 0; i < M; i++ {
    var s, c int
    fmt.Scanf("%d %d\n", &s, &c)
    if arr[s-1] > 0 && arr[s-1] != c {
      fmt.Println(-1)
      return
    }
    arr[s-1] = c
  }
  
  if N == 1 {
    if arr[0] == -1 {
      arr[0] = 0
    }
    fmt.Println(arr[0])
    return
  }
  
  if arr[0] == 0 {
    fmt.Println(-1)
    return
  }
  if arr[0] == -1 {
    arr[0] = 1
  }
  for i := 0; i < N; i++ {
    if arr[i] == -1 {
      arr[i] = 0
    }
    fmt.Printf("%d", arr[i])
  }
  
}