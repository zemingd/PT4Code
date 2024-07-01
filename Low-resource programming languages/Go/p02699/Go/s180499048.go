package main

import (
	"fmt"
)

func main() {
	var s, w int64
	fmt.Scan(&s, &w)
	if s > w {
		fmt.Println("safe")
	} else {
		fmt.Println("unsafe")
	}
}
