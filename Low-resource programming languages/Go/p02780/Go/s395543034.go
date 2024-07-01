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
  
  var result float32
  for i, ni := range nums {  
    var tmp float32
    tmp += float32(sumOneToN(ni)) / float32(ni)
    
    j := i
    for {
      j++
      if j > len(nums)-1 {
        break
      }
      if j - i > K - 1 {
      	break
      }
      
      nj := nums[j]
      tmp += float32(sumOneToN(nj)) / float32(nj)
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