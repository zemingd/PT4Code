package main

import "fmt"
  
func main() {
  var n, ans, flg int
  ans = 1
  ans_b := 1
  flg = 0
  fmt.Scan(&n)

  // 体力セット
  hp := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&hp[i])
  }
  
  for j := 0; j < n*n; j++ {
  
    // 最小値をみつける
    min := hp[0]
    for _, v := range hp { 
      if (v < min) { 
        min = v 
      } 
  	} 
  
    for i := 0; i < n; i++ {
      hp[i] = hp[i] % min
      if hp[i] == 1 {
        ans = 1
        flg = 1
        break
      }
      if hp[i] == 0 {
        hp[i] += min
      }
    }
  
    ans = hp[0]
    for _, v := range hp { 
      if (v < ans) { 
        ans = v 
      } 
  	}
    
    if ans == ans_b {
      flg++
      if flg == 10 {
      break
      }
    }
    ans_b = ans
    
  }
  
  if flg == 0 {
    ans = hp[0]
    for _, v := range hp { 
      if (v < ans) { 
        ans = v 
      } 
  	} 
  }
    
  fmt.Println(ans)
    
}
