package main

import (
	"fmt"
)

func main() {
	var k int
	var x int
	fmt.Scan(&k,&x)
	for i:=x-k+1; i<k+x; i++ {
		fmt.Print(i," ")
	}
	fmt.Println()
}