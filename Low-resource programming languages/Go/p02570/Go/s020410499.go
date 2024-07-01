package main
 
import (
	"fmt"
)
 
func main() {
	var D, T, S int
	fmt.Scanf("%d %d %d", &D, &T, &S)
	var time float64
	time = D / S
	var c string
	if time <= T{
		c = "Yes"
	} else {
		c = "No"
	}
	fmt.Printf("%s\n", c)
}