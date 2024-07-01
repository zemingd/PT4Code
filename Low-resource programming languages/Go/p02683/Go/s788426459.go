package main

import "fmt"

func main() {
	var n, m, x int
	fmt.Scanf("%d %d %d", &n, &m, &x)

	c := []int{}
	a := [][]int{}

	for i := 0; i < n; i++ {
		var ci int
		fmt.Scanf("%d", &ci)
		c = append(c, ci)
		ai := []int{}
		for j := 0; j < m; j++ {
			var aij int
			fmt.Scanf("%d", &aij)
			ai = append(ai, aij)
		}
		a = append(a, ai)
	}

	_, ans := search(0, -1, n, m, x, c, a, make([]int, m))
	fmt.Println(ans)
}

func search(ci, l, n, m, x int, c []int, a [][]int, a0 []int) ([]int, int) {
	a1 := make([]int, m)
	copy(a1, a0)

	if l >= 0 {
		ci += c[l]
		flag := true
		for i, v := range a[l] {
			a1[i] += v
			flag = (flag && a1[i] >= x)
		}

		if flag {
			return a1, ci
		}
	}

	var ansarr []int
	anscost := -1
	for i := l + 1; i < n; i++ {
		v1, v2 := search(ci, i, n, m, x, c, a, a1)
		if v1 != nil && (anscost < 0 || anscost > v2) {
			ansarr = v1
			anscost = v2
		}
	}

	return ansarr, anscost
}
