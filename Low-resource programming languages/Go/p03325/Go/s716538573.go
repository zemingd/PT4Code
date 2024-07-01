package main

import "fmt"

func nextInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func main() {
	n := nextInt()
	cnt := 0

	for range make([]struct{}, n) {
		a := nextInt()
		for a%2 == 0 {
			cnt++
			a /= 2
		}
	}
	fmt.Println(cnt)
}
