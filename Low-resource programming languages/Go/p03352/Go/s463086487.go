package main

import (
	"fmt"
)

func main() {
	var X int
	fmt.Scan(&X)
	expo := make(map[int]bool, X+1)
	expo[1] = true
	for b := 2; b <= X; b++ {
		v := b * b
		for v <= X {
			expo[v] = true
			v *= b
		}
	}
	for i := X; i >= 1; i-- {
		if expo[i] {
			fmt.Println(i)
			return
		}
	}
}