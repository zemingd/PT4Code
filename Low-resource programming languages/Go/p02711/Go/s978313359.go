package main

import (
	"fmt"
)

func main() {
	var n string
	fmt.Scan(&n)

	solve := func() string {
		for i := 0; i < 3; i++ {
			if n[i] == '7' {
				return "Yes"
			}
		}
		return "No"
	}()

	fmt.Println(solve)
}
