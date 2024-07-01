package main

import "fmt"
  
func main() {
  var n, ans int
  fmt.Scan(&n)

  // 体力セット
  hp := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&hp[i])
  }
  
  for j := 0; j < n; j++ {
  
    // 最小値をみつける
    // sort.Ints(hp)
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
        break
      }
      if hp[i] == 0 {
        hp[i] += min
      }
    }
  
  }
  
  min := hp[0] 
  for _, v := range hp { 
    if (v < min) { 
      min = v 
    } 
  } 
  
  fmt.Println(ans)
    
}
