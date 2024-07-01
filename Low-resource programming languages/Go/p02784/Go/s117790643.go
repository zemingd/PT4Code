package main

import (
	"fmt"
)

func main() {
	H, Count := readInt(), readInt()
	loop(0, Count, func(i int) {
		H -= readInt()
	})

	if H <= 0 {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

func loop(start, end int, f func(i int)) {
	for i := start; i < end; i++ {
		f(i)
	}
}

func readInt() int {
	var v int
	fmt.Scan(&v)
	return v
}