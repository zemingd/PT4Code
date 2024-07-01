package main
import (
	"fmt"
)
func aside(n int) int {
	if n==0 { return 0 }
	return n + aside(n-1)
}
func main() {
	fmt.Println(aside())
}
