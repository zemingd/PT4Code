package main
 
import (
	"fmt"
)
 
func main() {
  var n int
  fmt.Scanf("%d", &n)

  ans := "No"
  if n / 100 == 7 {
    ans = "Yes"
  }
  
  n = n % 100
  if n / 10 == 7 {
    ans = "Yes"
  }
  
  if n % 10 == 7 {
    ans = "Yes"
  }
  fmt.Printf("%s\n", ans)
}