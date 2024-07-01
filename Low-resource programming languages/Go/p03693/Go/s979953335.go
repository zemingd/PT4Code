package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	i, _ := strconv.Atoi(s)

	if i%4 == 0 {
		fmt.Println("YES")
		return
	}
	fmt.Println("NO")
}
