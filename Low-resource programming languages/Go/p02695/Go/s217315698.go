package main

import "fmt"

var repeatedComb [][]int

func main() {
	var n, m, q int

	fmt.Scan(&n)
	fmt.Scan(&m)
	fmt.Scan(&q)

	a := make([]int, q, q)
	b := make([]int, q, q)
	c := make([]int, q, q)
	d := make([]int, q, q)

	for i := 0; i < q; i++ {
		fmt.Scan(&a[i])
		a[i]--
		fmt.Scan(&b[i])
		b[i]--
		fmt.Scan(&c[i])
		fmt.Scan(&d[i])
	}

	dfs([]int{}, n, m)

	answer := 0
	l := len(repeatedComb)
	for i := 0; i < l; i++ {
		ar := repeatedComb[i]
		sum := 0
		for j := 0; j < q; j++ {
			if ar[b[j]]-ar[a[j]] == c[j] {
				sum += d[j]
			}
		}
		if sum > answer {
			answer = sum
		}
	}

	fmt.Println(answer)
}

func dfs(a []int, n int, m int) {
	l := len(a)
	if l == n {
		repeatedComb = append(repeatedComb, a)
	} else {
		var k int
		if l == 0 {
			k = 1
		} else {
			k = a[l-1]
		}

		for i := k; i <= m; i++ {
			a2 := make([]int, l)
			copy(a2, a)
			a2 = append(a2, i)

			dfs(a2, n, m)
		}
	}
}
