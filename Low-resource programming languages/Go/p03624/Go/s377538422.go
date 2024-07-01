package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	m := make(map[rune]int, 26)
	for _, r := range s {
		m[r]++
	}
	if len(s) == 26 {
		fmt.Println("None")
	} else {
		az := "abcdefghijklmnopqrstuvwxyz"
		for _, r := range az {
			if m[r] == 0 {
				fmt.Println(string(r))
				return
			}
		}
	}
}
