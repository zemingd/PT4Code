package main
 
import (
	"fmt"
)
 
func main() {
	n := 0
	fmt.Scan(&n)
	if n == 1 || n == 2 || n == 3 || n == 5 || n == 6 || n == 9 || n == 10 || n == 13 || n == 17 {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}