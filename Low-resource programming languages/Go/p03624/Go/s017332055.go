package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	m := make(map[rune]int, 26)
	for _, r := range s {
		m[r]++
	}
	var r = 'a'
	for {
		if m[r] == 0 {
			fmt.Println(string(r))
			break
		}
		if r != 'z' {
			r++
		} else {
			fmt.Println("None")
			break
		}
	}
}
