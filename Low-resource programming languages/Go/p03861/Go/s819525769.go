package main
 
import (
  "fmt"
)

func main() {
  var a, b, x int
  fmt.Scan(&a, &b, &x)

  ans := 0
  if a == 0 {
    ans = b/x
    ans++
  }else{
    ans = b/x - (a-1)/x
  }
  fmt.Printf("%d\n", ans)
}