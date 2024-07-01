package main

import "fmt"

func main() {
	var n, m, q int
	fmt.Scan(&n, &m, &q)
	ar := make([][]int, n+1)
	for i := range ar {
		ar[i] = make([]int, n+1)
	}
	for i := 0; i < m; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		for j := 0; j <= l; j++ {
			ar[j][r]++
		}
	}
	for i := 0; i < q; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		sum := 0
		for j := l; j <= r; j++ {
			sum += ar[l][j]
		}
		fmt.Println(sum)
	}
}
