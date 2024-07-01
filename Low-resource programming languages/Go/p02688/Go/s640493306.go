package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	var d int
	var a int
	s := make([]int, n, n)
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		for l := 0; l < d; l++ {
			fmt.Scan(&a)
			s[a-1] = 1
		}
	}
	num := 0
	for i := 0; i < n; i++ {
		if s[i] == 0 {
			num++
		}
	}
	fmt.Println(num)
}