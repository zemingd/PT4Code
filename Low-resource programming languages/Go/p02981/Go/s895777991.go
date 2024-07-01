package main
 
import (
	"fmt"
)
 
func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)
	if train := n * a; train <= b {
		fmt.Println(train)
	} else {
		fmt.Println(b)
	}
}