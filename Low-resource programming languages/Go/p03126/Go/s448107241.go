package main

import "fmt"

func main() {
	var n, m, k, a, ans int
	fmt.Scan(&n, &m)
	f := make(map[int]int)
	for i := 0; i < n; i++ {
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			fmt.Scan(&a)
			f[a]++
		}
	}
	for _, v := range f {
		if v == n {
			ans++
		}
	}
	fmt.Println(ans)
}
