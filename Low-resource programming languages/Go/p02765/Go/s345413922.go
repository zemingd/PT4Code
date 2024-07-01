package main

import (
	"fmt"
)

func main() {
	var n, r int
	fmt.Scanf("%d %d", &n, &r)
	if n >= 10 {
		fmt.Printf("%d\n", r)
	} else {
		fmt.Printf("%d\n", r+100*(10-n))
	}
}
