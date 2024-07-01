package main
 
import (
  "fmt"
)
 
func main() {
  var a, b, c int
  fmt.Scanf("%d %d %d", &a, &b, &c)

  tens := a
  ans := tens * 10 + b + c
  if tens <= b {
    tens = b
  	ans = tens * 10 + a + c
  }
  if tens <= c {
    tens = c
  	ans = tens * 10 + a + b
  }  

  fmt.Printf("%d\n", ans)
}