package main

import "fmt"

func main() {
  var A, B, m int
  fmt.Scan(&A, &B)
  for A%B != 0 {//ユークリッド
    m = A%B
    A = B
    B = m
  }
  ans := []int{1}
  n := 1
  for i := 2; i*i <= B; i++ {
	for B%i == 0 {
      B /= i
      if ans[n-1] != i {  
        n++
        ans = append(ans, i)
      }
	}
  }
  if B > 1 {
    ans = append(ans, B)
  }
  fmt.Println(ans)
}
