package main
import "fmt"
func main() {
  var h, a int
  fmt.Scan(&h, &a)
  result := int(h / a)
  	if h % a > 0 {
  		result = result + 1
  	}
  	fmt.Println(result)
}