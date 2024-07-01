package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if b == 1 {
		fmt.Println(0)
		return
	}

	unused := a
	count := 1
	for unused < b {
		unused += -1 + a
		count++
	}
	fmt.Println(count)
}
