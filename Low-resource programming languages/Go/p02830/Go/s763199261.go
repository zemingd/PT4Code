package main

import "fmt"

func main(){
  var n int
  var s1, s2, ans string
  fmt.Scan(&n)
  fmt.Scan(&s1)
  fmt.Scan(&s2)
  for i := 0; i < n; i++{
    ans += s1[i] + s2[i]
  }
  fmt.Println(ans)
}