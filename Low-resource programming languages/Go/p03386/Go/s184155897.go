package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	dic := map[int]struct{}{}

	for _, i := range []int{a, b - k + 1} {
		for j := range make([]struct{}, k) {
			k := i + j
			if _, in := dic[k]; !in && a <= k && k <= b {
				fmt.Println(k)
				dic[k] = struct{}{}
			}
		}
	}
}
