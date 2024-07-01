package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	vs := make([]int, n)
	cs := make([]int, n)
	for i := range vs {
		fmt.Scan(&vs[i])
	}
	for i := range cs {
		fmt.Scan(&cs[i])
	}

	ans := 0
	for i, c := range cs {
		v := vs[i]
		if p := v - c; p > 0 {
			ans += p
		}
	}
	fmt.Println(ans)
}
