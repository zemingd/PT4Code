package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	as := make([]int, n+1)
	for i := 1; i <= n; i++ {
		fmt.Scan(&as[i])
	}

	ds := make([]int, n+1)

	cur := 1
	for i := 1; i <= k; i++ {
		cur = as[cur]
		if ds[cur] == 0 {
			ds[cur] = i
			continue
		}

		d := i - ds[cur]
		if d <= k-i {
			i += (k - i) / d * d
		}
	}

	fmt.Println(cur)
}
