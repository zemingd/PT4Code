package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)

	table := make(map[int]int)

	for i := 1; i < 10; i++ {
		for v := 1; v < 10; v++ {
			table[i*v] = 1
		}
	}
	if _, f := table[a]; f {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}