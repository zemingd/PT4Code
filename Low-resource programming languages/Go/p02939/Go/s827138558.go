package main

import "fmt"

func main() {
  var N string
  fmt.Scan(&N)
  ans := len(N)
  for i := 0; i < len(N)-1; i++ {
    if N[i] != N[i+1] {
      continue
    }
    ans--
    i += 2
  }
  fmt.Println(ans)
}
