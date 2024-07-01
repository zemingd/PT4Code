package main

import "fmt"

func main() {
	var h, a int
	fmt.Scan(&h, &a)

	count := 0
	for i := 0; i < 10000; i++ {
		h -= a
		count++
		if h < 0 {
			break
		}
	}
	fmt.Println(count)
}
