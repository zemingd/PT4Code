package main

import (
  "fmt"
)

func main() {
  var h, w int
  fmt.Scan(&h, &w)
  ass := make([][]int, h)
  for i := 0; i < h; i++ {
    ass[i] = make([]int, w)
    for j := 0; j < w; j++ {
      fmt.Scan(&ass[i][j])
    }
  }
  
  var result [][4] int
  for i, as := range ass {
    for j, a := range as {
      if a%2 == 0 || j == w-1 {
        continue
      }
      as[j]--
      as[j+1]++
      result = append(result, [4]int{i+1, j+1, i+1, j+2})
    }
  }
  for i, as := range ass {
    last := as[w-1]
    if last%2 == 0 || i == h-1 {
      continue
    }
    as[w-1]--
    ass[i+1][w-1]++
    result = append(result, [4]int{i+1, w-1, i+2, w-1})
  }
  
  fmt.Println(len(result))
  for _, arr := range result {
    fmt.Println(arr[0], arr[1], arr[2], arr[3])
  }
}