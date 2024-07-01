package main

import (
	"fmt"
)

func main() {
	fmt.Println(guessNum([]int{1, 3, 1}, []int{7, 2, 7}, 3, 3))
	fmt.Println(guessNum([]int{2, 2}, []int{1, 3}, 3, 2))
	fmt.Println(guessNum([]int{1}, []int{0}, 3, 1))
}

func guessNum(s, c []int, N, M int) int {
  t := make(map[int]int)
  for k, v := range s {
    // 0 になる時
    if N > 1 && v - 1 == 0 && c[k] == 0 {
      return -1
    }

    if val, ok := t[v - 1]; ok {
      if val != c[k] {
        return -1
      }
    } else {
      t[v -1] = c[k]
    }
  }

  ss := make([]int, N)
  for k, v := range t {
    ss[k] = v
  }

  var result int
  for _, v := range ss {
    result = result * 10 + v
  }

  return result
}