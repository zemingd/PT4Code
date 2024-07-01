package main

import "fmt"

func main() {
  var K, S, count int
  fmt.Scan(&K, &S)
// 0 <= X, Y, Z <= K
  for X := 0; X <= K; X++ {
    for Y := 0; Y <= K; Y++ {
      Z := S - X - Y
      if X + Y + Z == S && Z >= 0 && K >= Z{
        count += 1
      }
    }
  }
  fmt.Println(count)
}