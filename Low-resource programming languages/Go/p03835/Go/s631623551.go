package main

import (
  "fmt"
)

func main() {
  var k, s int
  fmt.Scanf("%d %d", &k, &s)

  ans := createAnswer(k, s)
  fmt.Println(ans)
}

// s = x + y + z を満たす組み合わせは何通り存在するのかを確認する
func createAnswer(k, s int) (ans int) {
  for x := 0; x <= k; x++ {
    for y := 0; y <= k; y++ {
      z := s - x - y
      if z >= 0 && z <= k {
        ans++
      }
      if z < 0 {
        break
      }
    }
  }
  return ans
}
