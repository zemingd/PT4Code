package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	list := make([]int, 26)
	for _, c := range s {
		list[c-97]++
	}
	for i := 0; i < 26; i++ {
		if list[i] == 0 {
			fmt.Println(string(i + 97))
			return
		}
	}
	fmt.Println("None")

}
