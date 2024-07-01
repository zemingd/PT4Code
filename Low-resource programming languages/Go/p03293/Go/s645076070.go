package main 

import (
  "fmt"
)

func main() {
  var S, T string
  fmt.Scan(&S, &T)
  
  ret := false
  for i:=1; i < len(S)+1; i++ {
    front := S[:i]
    end := S[i:]
    if T == end + front {
      ret = true
    }
  }
  if ret {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}