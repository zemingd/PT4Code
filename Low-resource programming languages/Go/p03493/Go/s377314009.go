package main

import "fmt"

func main() {
	var s string
	var count int

	fmt.Scanf("%s", &s)

	for _, m := range s {
		if m == '1' {
			count++
		}
	}
	fmt.Println(count)
}

