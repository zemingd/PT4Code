package main
 
import (
	"fmt"
)
 
func main() {
	var D, T, S int
	fmt.Scanf("%d %d %d", &D, &T, &S)
	var time float64
	time = float64(D) / float64(S)
	var c string
	Time := float64(T)
	if time <= Time{
		c = "Yes"
	} else {
		c = "No"
	}
	fmt.Printf("%s\n", c)
}