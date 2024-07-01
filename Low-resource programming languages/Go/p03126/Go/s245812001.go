package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	foods := make(map[int]int)
	ans := 0
	for i := 0; i < N; i++ {
		var k, a int
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			fmt.Scan(&a)
			foods[a]++
			if foods[a] == N {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
