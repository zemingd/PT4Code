package main

import "fmt"

func main() {
	var X int
	fmt.Scan(&X)
	expo := map[int]bool{}
	expo[1] = true
	for b := 2; b < X; b++ {
		v := b * b
		for v <= X {
			expo[v] = true
			v *= b
		}
	}
	for i := X; i > 0; i-- {
		if expo[i] {
			fmt.Println(i)
			return
		}
	}
}