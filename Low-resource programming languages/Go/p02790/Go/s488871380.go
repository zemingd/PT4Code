package main

import (
	"fmt"
	"strconv"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	var sa, sb string
	for i := 0; i < a; i++ {
		sb += strconv.Itoa(b)
	}
	for i := 0; i < b; i++ {
		sa += strconv.Itoa(a)
	}
	// fmt.Println("sa", sa, "sb", sb)
	if sa == sb {
		fmt.Println(sa)
	} else if sa > sb {
		fmt.Println(sb)
	} else {
		fmt.Println(sa)
	}
}
