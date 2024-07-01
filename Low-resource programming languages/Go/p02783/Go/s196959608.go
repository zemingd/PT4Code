package main
 
import (
	"fmt"
)
 
func main() {
  var h, a int
  fmt.Scanf("%d %d", &h, &a)
  
  ans := h / a
  if h % a != 0{
    ans++
  }
  
  fmt.Printf("%d\n", ans)
}