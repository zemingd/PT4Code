package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	target := "ABC"

	save := 0
	count := 0
	for i := 0; i < n; i++ {
		if s[i] == target[save] {
			save++
			if save >= 3 {
				save = 0
				count++
			}
		} else {
			if s[i] == target[0] {
				save = 1
			} else {
				save = 0
			}
		}
	}
	fmt.Println(count)
}
