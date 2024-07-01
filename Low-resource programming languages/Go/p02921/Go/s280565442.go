package main

import "fmt"

func main() {
	var a string
	var b string
	fmt.Scanf("%s", &a)
	fmt.Scanf("%s", &b)

	total := 0
	for i, _ := range a {
		if a[i] == b[i] {
			total++
		}
	}
	fmt.Printf("%d", total)
}