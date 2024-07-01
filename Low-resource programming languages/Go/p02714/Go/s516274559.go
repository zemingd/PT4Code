package main

import "fmt"

func main() {
  var N,ans int
  var countR,countG,countB int
  var S string
  fmt.Scan(&N)
  fmt.Scan(&S)

  for i:=0; i<N; i++{
    if S[i] == 82{
      countR++
    }
    if S[i] == 71{
      countG++
    }
    if S[i] == 66{
      countB++
    }
  }
  ans = countR*countG*countB
  
  for i := 0; i<N-2; i++ {
    for j := i+1; j<N-1; j++ {
      k := 2*j-i
      if k>=N{
        continue
      }
      if S[i]!=S[j] && S[j]!=S[k] && S[k]!=S[i]{
        ans--
      }
    }
  }
  fmt.Println(ans)
}
