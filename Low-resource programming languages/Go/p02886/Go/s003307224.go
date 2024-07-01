package main

import "fmt"

func main() {

	var a int
	fmt.Scan(&a)

	list := make([]int, a)
	for i := 0; i < a; i++ {
		fmt.Scan(&list[i])
	}

	h := 0
	for i := 0; i < a; i++ {
		for j := i + 1; j < a; j++ {
			h += list[i] * list[j]
		}
	}
	fmt.Println(h)
}
