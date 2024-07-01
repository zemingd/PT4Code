package main

import (
  "fmt"
  "sort"
)

func main() {
  var N int
  fmt.Scanf("%d", &N)
  
  nums := make([]int, N)
  for i := 0; i < N; i++ {
  	var n int
    fmt.Scanf("%d", &n)
    nums[i] = n
  }
  
  sort.Ints(nums)
  
  var duplicate bool
  var previous int
  for _, n := range nums {
    if previous == n {
      duplicate = true
      break
    }
    previous = n
  }
  
  if duplicate {
  	fmt.Println("NO")
  } else {
    fmt.Println("YES")
  }
}