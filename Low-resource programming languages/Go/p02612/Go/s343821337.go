package main

import(
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	fmt.Printf("%d", 1000 - (n % 1000))	
}