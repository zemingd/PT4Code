package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	var n int
	fmt.Scan(&n)

	count := 0
	for k >= n {
		k = k / n
		count++
	}
	fmt.Println(count + 1)
}