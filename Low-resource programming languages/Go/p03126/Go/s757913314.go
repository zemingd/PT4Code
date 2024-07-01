package main

import "fmt"

func main() {
	var n, p int
	fmt.Scan(&n)
	fmt.Scan(&p)

	vals := map[int]int{}
	var re int
	for index := 0; index < n; index++ {
		var nn int
		fmt.Scan(&nn)
		for j := 0; j < nn; j++ {
			var v int
			fmt.Scan(&v)
			vals[v]++
		}
	}

	for _, item := range vals {
		if item == n {
			re++
		}
	}
	fmt.Println(re)
}
