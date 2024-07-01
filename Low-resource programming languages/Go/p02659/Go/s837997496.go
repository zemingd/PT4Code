package main 
 
import "fmt"
 
func main() {
	var A int
  	var B float64
  fmt.Scan(&A, &B)
  sum := A * (int(B)*100)
  ans := float64(sum)/100
  fmt.Println(ans)
}