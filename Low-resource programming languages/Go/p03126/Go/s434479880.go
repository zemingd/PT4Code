package main

import "fmt"

func nextInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func main() {
	n := nextInt()
	_ = nextInt()

	dic := map[int]int{}

	for range make([]struct{}, n) {
		k := nextInt()
		for range make([]struct{}, k) {
			dic[nextInt()]++
		}
	}

	ans := 0
	for _, val := range dic {
		if val == n {
			ans++
		}
	}
	fmt.Println(ans)
}
