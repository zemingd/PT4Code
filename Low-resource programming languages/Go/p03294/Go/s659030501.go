package main

import "fmt"

func nextInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func main() {
	N := nextInt()

	ans := 0
	for range make([]struct{}, N) {
		ans += nextInt() - 1
	}
	fmt.Println(ans)
}
