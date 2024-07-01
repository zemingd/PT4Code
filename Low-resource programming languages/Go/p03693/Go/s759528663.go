package main

import (
	"fmt"
	"strconv"
)

func main() {
	var r, g, b string
	fmt.Scan(&r, &g, &b)
	s := fmt.Sprintf("%s%s%s", r, g, b)
	i, _ := strconv.Atoi(s)
	if i%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
