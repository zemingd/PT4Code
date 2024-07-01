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
		r := map[int]int{}
		for j := 1; j <= N; j++ {
			if i&(1<<uint(j-1)) == 0 {
				continue
			}
			m := A[j-1]
			if v, e := r[j]; e {
				if v == 0 {
					ok = false
					break
				}
			} else {
				r[j] = 1
			}
			if !check(A, r, m) {
				ok = false
				break
			}
		}
		if cnt := counter(i); ok && cnt > max {
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

func counter(x int) int {
	if x == 0 {
		return 0
	}
	return counter(x>>1) + (x & 1)
}
