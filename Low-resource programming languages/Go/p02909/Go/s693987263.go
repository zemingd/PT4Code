package main
 
import (
	"fmt"
)
 
func main() {
	var a string
	var b string
	fmt.Scan(&a)
	b = "Sunny"
	if a == "Sunny" {
		b = "Cloudy"
	} else if a == "Cloudy" {
		b = "Rainy"
	}
	fmt.Print(b)
}