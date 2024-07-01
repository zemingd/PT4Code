package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	var ab, ba int
	for i := 0; i < b; i++ {
		ab = ab * 10 + a
	}
	for i := 0; i < a; i++ {
		ba = ba * 10 + b
	}

	if ab > ba {
		fmt.Println(ab)
	} else {
		fmt.Println(ba)
	}
}
