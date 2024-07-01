package main

import (
	"fmt"
)

func main() {
	var S string
	var ans int
	fmt.Scan(&S)

	for _, s := range S {
		if s == '1' {
			ans += 1
		}
	}

	fmt.Println(ans)
}