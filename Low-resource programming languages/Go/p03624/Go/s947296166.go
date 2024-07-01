package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	t := make([]int, 26)
	for _, c := range s {
		i := c - 'a'
		t[i]++
	}
	for i, e := range t {
		if e == 0 {
			c := rune('a' + i)
			fmt.Printf("%c\n", c)
			return
		}
	}
	fmt.Println("None")
}
