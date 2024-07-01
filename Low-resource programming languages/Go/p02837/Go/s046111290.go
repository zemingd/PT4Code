package main

import "fmt"

var (
	n int
	a [15]int
	x [15][14]int
	y [15][14]int
)

func main() {
	fmt.Scan(&n)
	fmt.Scan(&a)
	for i := 0; i < n; i++ {
		fmt.Scan(&(a[i]))
		for j := 0; j < a[i]; j++ {
			var v, w int
			fmt.Scan(&v)
			fmt.Scan(&w)
			x[i][j], y[i][j] = v-1, w
		}
	}
	// fmt.Println(n)
	// fmt.Println(a)
	// fmt.Println(x)
	// fmt.Println(y)
	var answer int

	for i := 0; i < (1 << n); i++ {
		cnt := judge(i)
		// fmt.Println(cnt, i)
		if cnt > answer {
			answer = cnt
		}
	}

	fmt.Println(answer)
}

func judge(bits int) int {
	honest := make([]bool, n)
	var cnt int
	for i := 0; i < n; i++ {
		honest[i] = (bits & (1 << i)) > 0
		if honest[i] {
			cnt++
		}
	}
	// fmt.Println(honest)
	for i := 0; i < n; i++ {
		if !honest[i] {
			continue
		}
		for j := 0; j < a[i]; j++ {
			v := x[i][j]
			w := y[i][j]
			if (honest[v] && w == 0) || (!honest[v] && w == 1) {
				return 0
			}
		}
	}
	return cnt
}
