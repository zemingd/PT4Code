package main

import "fmt"

func main() {
	n, k := 0, 1000
	fmt.Scan(&n)
	r := n % k
	fmt.Println((k - r) % k)
}
