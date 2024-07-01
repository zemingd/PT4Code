package main

import "fmt"

func main() {
	var n, m, x int
	fmt.Scan(&n, &m, &x)
	a := make([][]int, n)
	for i := range a {
		a[i] = make([]int, m+1)
	}
	for i := 0; i < n; i++ {
		for j := 0; j < m+1; j++ {
			fmt.Scan(&a[i][j])
		}
	}
	counts := []int{}
	for bits := 0; bits < (1 << uint64(n)); bits++ {
		// bitsの各要素についてのループ
		var count int
		points := make([]int, m)
		for i := 0; i < n; i++ {
			// bitsのi個目の要素の状態がonかどうかチェック
			if (bits>>uint64(i))&1 == 1 {
				// 何かしらの処理
				count += a[i][0]
				for j := 1; j <= m; j++ {
					points[j-1] += a[i][j]
				}
			}
		}
		add := true
		for _, point := range points {
			if point < x {
				add = false
			}
		}
		if add {
			counts = append(counts, count)
		}
	}
	if len(counts) == 0 {
		fmt.Println(-1)
	} else {
		least := counts[0]
		for _, count := range counts {
			if count < least {
				least = count
			}
		}
		fmt.Println(least)
	}

}
