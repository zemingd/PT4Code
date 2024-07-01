package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	a := make([]int, len(s))
	for i := range s {
		a[i] = int(s[i])
	}

	var count int
	for i := 0; i < len(a)-1; i++ {
		if a[i] == a[i+1] {
			count++
			if a[i+1] == 48 {
				a[i+1] = 49
			} else {
				a[i+1] = 48
			}
		}
	}
	fmt.Println(count)
}
