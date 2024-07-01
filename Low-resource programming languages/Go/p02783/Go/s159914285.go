package main

import (
	"fmt"
)

func main() {
	var h, a int
	fmt.Scan(&h, &a)

	i := 1
	for {
		cal := a * i
		if h >= cal {
			fmt.Print(i)
			return
		}
		i++
	}
}
