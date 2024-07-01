package main

import "fmt"

func main() {
  var N,ans int
  var S string
  fmt.Scan(&N)
  fmt.Scan(&S)
  
  for i := 0; i<N-2; i++ {
    for j := i+1; j<N-1; j++ {
      for k := j+1; k<N; k++ {
        if k == 2*j-i {
          continue
        }
        
        if S[i]!=S[j] && S[j]!=S[k] && S[k]!=S[i]{
          ans++
        }
      }
    }
  }
  fmt.Println(ans)
}
