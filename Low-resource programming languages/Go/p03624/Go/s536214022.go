package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	a := make([]int, 26)
	for _, v := range s {
		a[int(v)-97] = 1
	}
	for i, v := range a {
		if v == 0 {
			fmt.Println(string(i + 97))
			return
		}
	}
	fmt.Println("None")
}