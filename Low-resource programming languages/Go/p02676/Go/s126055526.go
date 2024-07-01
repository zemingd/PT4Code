package main

import "fmt"

func main() {
	var k int
	var n string
	fmt.Scan(&k, &n)

	if len(n) <= k {
		fmt.Println(n)
		return
	}

	fmt.Print(n[:k])
	fmt.Println("...")
}
