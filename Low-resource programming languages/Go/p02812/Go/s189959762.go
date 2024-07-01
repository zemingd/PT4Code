package main

import (
	"fmt"
)

func main() {
	var a int
	var b string
	fmt.Scanf("%d\n%s", &a, &b)
	var count int
	for i, _ := range b {
		if i < 3 {
			continue
		}
		if b[i-2] != 'A' {
			continue
		}
		if b[i-1] != 'B' {
			continue
		}
		if b[i] != 'C' {
			continue
		}
		count++
	}
	fmt.Print(count)
}
