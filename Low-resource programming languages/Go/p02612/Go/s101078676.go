package main

import(
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	fraction := n%1000
	if fraction==0 {
		fmt.Println(0)
	} else {
		fmt.Println(1000-fraction)
	}
	
}