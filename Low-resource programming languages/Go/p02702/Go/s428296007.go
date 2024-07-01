package main

import (
  "fmt"
  "strconv"
)

func main() {
  var (
    s string
    ans int
  )
  fmt.Scan(&s)
  for i:=0; i<len(s)-3; i++ {
    for j:=4; j<len(s)-i+1; j++ {
      n,_ := strconv.Atoi(s[i:i+j])
      if n%2019 == 0 {
        ans++
      }
    }
  }
  fmt.Println(ans)
}
