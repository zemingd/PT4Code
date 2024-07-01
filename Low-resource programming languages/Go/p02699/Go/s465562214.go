package main

import (
	"fmt"
)

func main() {
	var S, W int
	fmt.Scan(&S, &W)

	res := "safe"
	if S <= W {
		res = "unsafe"
	}
	fmt.Println(res)
}
