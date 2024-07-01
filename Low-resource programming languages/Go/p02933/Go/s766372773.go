atcoder-tools: The pre-rendered templates are not found.package main

import (
	"fmt"
)

func main() {
	var (
		r int64
		s string
	)

	fmt.Scan(&r)
	fmt.Scan(&s)

	if r < 3200 {
		fmt.Println("red")
	} else {
		fmt.Println(s)
	}

}
