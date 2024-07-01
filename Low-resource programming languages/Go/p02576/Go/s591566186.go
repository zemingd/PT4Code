package main
 
import (
	"fmt"
)
 
func main() {
	var n, x, t int
	fmt.Scanf("%d %d %d", &n, &x, &t)
	var a = n / x 
	var b = n % x
	var c int
	if b == 0{
		c = a * t
	} else {
		c = (a+1) *t
	}
	fmt.Printf("%d\n", c)
}