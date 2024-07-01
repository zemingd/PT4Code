package main
 
import (
	"fmt"
)
 
var n, num int
func main() {
	fmt.Scan(&n)
	num = n / 1000
	if n % 1000 != 0 {
		num++
	}
	fmt.Println(num * 1000 - n)
}
