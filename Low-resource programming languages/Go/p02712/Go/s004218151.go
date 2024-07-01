package main

import "fmt"

func main() {
	var n int64
	fmt.Scan(&n)

	var sum int64
	for i := int64(0); i < n; i++ {
		if i%3 != 0 && i%5 != 0 {
			sum += i
		}
	}
	fmt.Println(sum)
}
