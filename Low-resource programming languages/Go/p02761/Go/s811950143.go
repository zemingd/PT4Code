package main

// ABC157C - Guess The Number
// https://atcoder.jp/contests/abc157/tasks/abc157_c
// 解説放送見て書き直してみた

import "fmt"

func reverse(a []int) (r []int) {
	for i := len(a) - 1; i >= 0; i-- {
		r = append(r, a[i])
	}
	return r
}

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	p := make([]map[int]int, 0)
	for i := 0; i < M; i++ {
		var c, s int
		fmt.Scan(&c, &s)
		pm := make(map[int]int, 0)
		pm[c] = s
		p = append(p, pm)
	}
	// fmt.Println("N", N, "M", M, "p", p)
	for x := 0; x < 1000; x++ {
		nx := x
		d := make([]int, 0)
		for nx > 0 {
			d = append(d, nx%10)
			nx /= 10
		}
		d = reverse(d)
		if len(d) != N {
			continue
		}
		ok := true
		for i := 0; i < M; i++ {
			for k, v := range p[i] {
				if d[k-1] != v {
					ok = false
				}
			}
		}
		if ok {
			fmt.Println(x)
			return
		}
	}
	fmt.Println(-1)
}
