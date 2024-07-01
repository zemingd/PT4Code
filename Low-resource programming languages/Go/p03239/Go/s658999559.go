package main

import "fmt"

func main() {
	var N, T int
	fmt.Scan(&N, &T)

	var c, t int
	ans := 999999
	for i := 0; i < N; i++ {
		fmt.Scan(&c, &t)
		if t <= T && c < ans {
			ans = c
		}
	}
	if ans == 999999 {
		fmt.Println("TLE")
		return
	}

	fmt.Println(ans)
}