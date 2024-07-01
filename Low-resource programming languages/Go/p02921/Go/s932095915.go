package main

import "fmt"

func main() {

	var a, b string
	fmt.Scan(&a, &b)

	count := 0
	for i := 0; i < 3; i++ {
		if a[i] == b[i] {
			count++
		}
	}
	fmt.Println(count)
}
