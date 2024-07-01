package main 
 
import (
	"fmt"
)
 
func main() {
	var A int
  	var B float64
  fmt.Scan(&A, &B)
  AB := float64(A) * B
  ans := int(AB)
  fmt.Println(ans)
}