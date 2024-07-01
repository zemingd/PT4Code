// (1+2)/2 + (1+2+3+4)/4 + (1+2+3+4+5)/5 = 7

package main

import (
  "fmt"
)

func main() {
  var N, K int
  fmt.Scanf("%d %d", &N, &K)
  
  nums := make([]int, N)
  for i := 0; i < N; i++ {
    var n int
    fmt.Scanf("%d", &n)
    nums[i] = n
  }
  
  m := map[int]float32{}
  
  var result float32
  for i, ni := range nums {  
    var tmp float32
    if v, ok := m[i]; ok {
      tmp += v
    } else {
      f := float32(sumOneToN(ni)) / float32(ni)
      tmp += f
      m[i] = f
    }
    
    j := i
    for {
      j++
      if j > len(nums)-1 {
        break
      }
      if j - i > K - 1 {
      	break
      }
      
      if v, ok := m[j]; ok {
        tmp += v
      } else {
        nj := nums[j]
        f := float32(sumOneToN(nj)) / float32(nj)
        tmp += f
        m[j] = f
      }
    }
    if tmp > result {
      result = tmp
    }
  }
  
  fmt.Println(result)
}

func sumOneToN(n int) int {
  var result int
  for i := 1; i <= n; i++ {
  	result += i
  }
  return result
}
