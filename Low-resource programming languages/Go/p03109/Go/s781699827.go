package main

import (
	"fmt"
)

func main() {
	var y, m, d int
	fmt.Scanf("%d/%d/%d\n", &y, &m, &d)

	if y < 2019 {
		fmt.Println("Heisei")
		return
	}
	if 2019 < y {
		fmt.Println("TBD")
		return
	}
	if m <= 4 {
		fmt.Println("Heisei")
		return
	}
	fmt.Println("TBD")
}