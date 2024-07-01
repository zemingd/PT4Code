package main

import (
	"fmt"
	"strconv"
)

func main() {
	var r, g, b string
	fmt.Scan(&r, &g, &b)

	n, _ := strconv.Atoi(r + g + b)

	if n%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
