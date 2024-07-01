package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	vs := make([]int, n)
	for i := range vs {
		fmt.Scan(&vs[i])
	}
	cs := make([]int, n)
	for i := range cs {
		fmt.Scan(&cs[i])
	}

	var ans int
	for i := 0; i < n; i++ {
		if tmp := vs[i] - cs[i]; tmp > 0 {
			ans += tmp
		}
	}

	fmt.Println(ans)
}
