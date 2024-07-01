package main

import (
	"fmt"
)

func main() {
	var r, g, b int
	var ans string
	fmt.Scan(&r, &g, &b)

	if (100*r+10*g+b)%4 == 0 {
		ans = "YES"
	} else {
		ans = "NO"
	}

	fmt.Println(ans)
}