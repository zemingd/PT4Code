package main

import (
	"fmt"
	"sort"
)

// 4 3
// 3 3 -4 -2
func main() {
	var N, K int
	fmt.Scanf("%d %d\n", &N, &K)

	A := make([]int, N)
	for i := 0; i < N; i++ {
		var a int
		fmt.Scanf("%d", &a)
		A[i] = a
	}
	sort.Ints(A)
	ld, rd := int(-1e18), int(1e18)
	for rd-ld > 1 {
		mid := (ld + rd) / 2
		//fmt.Println(ld, rd, mid)
		cnt := 0
		for i := 0; i < N; i++ {
			l, r := -1, N
			if A[i] >= 0 {
				for r-l > 1 {
					m := (l + r) / 2
					//fmt.Println(l, r, m)
					if A[i]*A[m] >= mid {
						r = m
					} else {
						l = m
					}
					//time.Sleep(time.Second * 2)
				}
				cnt += r
			} else {
				for r-l > 1 {
					m := (l + r) / 2
					//fmt.Println(l, r, m)
					if A[i]*A[m] >= mid {
						l = m
					} else {
						r = m
					}
					//time.Sleep(time.Second * 2)
				}
				cnt = cnt + N - r
			}
			if A[i]*A[i] <= mid {
				cnt -= 1
			}
		}
		cnt = cnt / 2
		//fmt.Println(cnt, ld, rd, mid)

		if cnt >= K {
			rd = mid
		} else {
			ld = mid
		}
		//time.Sleep(time.Second * 2)
	}
	fmt.Println(ld)
}
