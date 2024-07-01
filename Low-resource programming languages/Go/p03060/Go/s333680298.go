package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	vs := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&vs[i])
	}
	cs := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&cs[i])
	}

	ans := 0
	for i := 0; i < N; i++ {
		if val := vs[i] - cs[i]; val > 0 {
			ans += val
		}
	}

	fmt.Println(ans)
}
