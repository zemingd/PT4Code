package main

import (
	"fmt"
	"os"
)

func main() {
	H, Count := readInt(), readInt()
	loop(0, Count, func(i int) {
		H -= readInt()

		if H <= 0 {
			fmt.Println("Yes")
			os.Exit(0)
		}
	})
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
