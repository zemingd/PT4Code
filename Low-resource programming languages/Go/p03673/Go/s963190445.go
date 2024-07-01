package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	str := make([]string, 0)
	for i := 0; i < n; i++ {
		var tmp string
		fmt.Scan(&tmp)
		if i % 2 == 0 {
			str = append(str, tmp)
		} else {
			str = append([]string{tmp}, str...)
		}
	}
	if n % 2 == 0 {
		for i := 0; i < n; i++ {
			fmt.Print(string(str[i]))
			if i != n - 1 {
				fmt.Print(" ")
			}
		}
	} else {
		for i := n - 1; i >= 0; i-- {
			fmt.Print(string(str[i]))
			if i != 0 {
				fmt.Print(" ")
			}
		}
	}
	fmt.Println()
}