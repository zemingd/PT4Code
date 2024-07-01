package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d\n", &N)
	A := []map[int]int{}
	for i := 0; i < N; i++ {
		var al int
		fmt.Scanf("%d\n", &al)
		m := map[int]int{}
		for i := 0; i < al; i++ {
			var x, y int
			fmt.Scanf("%d %d\n", &x, &y)
			m[x] = y
		}
		A = append(A, m)
	}

	max := 0
	for i := 1; i < 1<<uint(N); i++ {
		ok := true
		cnt := 0
		r := map[int]int{}
		for j := 0; i>>uint(j) > 0; j++ {
			if i>>uint(j)&1 == 0 {
				continue
			}
			m := A[j]
			r[j+1] = 1
			if check(A, r, m) {
				cnt++
			} else {
				ok = false
				break
			}

		}
		if ok && cnt > max {
			max = cnt
		}
	}

	fmt.Println(max)
}

func check(A []map[int]int, r, m map[int]int) bool {
	for k, v := range m {
		v1, e := r[k]
		if e {
			if v1 != v {
				return false
			}
			continue
		}
		r[k] = v
		if v == 1 {
			m := A[k-1]
			if !check(A, r, m) {
				return false
			}
		}
	}
	return true
}
