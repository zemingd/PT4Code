package main 
 
import "fmt"
 
func main() {
	var A int
  	var B float64
  fmt.Scan(&A, &B)
  B2 := int(B *100)
  sum := A * B2
  ans := float64(sum)/100
}