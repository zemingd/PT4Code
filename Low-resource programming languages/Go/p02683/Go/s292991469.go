package main

import "fmt"

func main() {
	var n, m, x int
	fmt.Scan(&n, &m, &x)

	cl := make([]int, n)
	al := make([][]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&cl[i])
		al[i] = make([]int, m)
		for j := 0; j < m; j++ {
			fmt.Scan(&al[i][j])
		}
	}

	min := int(1e9)
	for k := 0; k < 1<<uint(n); k++ {
		cost := 0
		tmpl := make([]int, m)
		for l := 0; l < n; l++ {
			if 1<<uint(l)&k > 0 {
				// フラグの立っている参考書
				//tmpl[l] += al[k][l]
				cost += cl[l]
				for q := 0; q < m; q++ {
					tmpl[q] += al[l][q]
				}
				// 論理積は順番で結果変わる
				//fmt.Println(1 << uint(l) & k)
				//fmt.Println(k & 1 << uint(l))
			}
		}

		ok := true
		for i := 0; i < m; i++ {
			if tmpl[i] < x {
				ok = false
			}
		}
		if ok {
			if cost < min {
				min = cost
			}
		}
	}

	if min == int(1e9) {
		fmt.Println(-1)
	} else {
		fmt.Println(min)
	}
}
