package main
 
import (
	"fmt"
)
 
func main() {
	var n int
	fmt.Scanf("%d", &n)
	var a = n % 9
	var c string
	if a == 0{
		c = "Yes"
	} else {
		c = "No"
	}
	fmt.Printf("%s\n", c)
}