package main

import "fmt"

func min(a []int) (idx, val int) {
	val = a[0]
	for i, aa := range a {
		if aa < val {
			idx, val = i, aa
		}
	}
	return
}

func main() {
	var p, q, r int
	fmt.Scan(&p, &q, &r)
	x := p + q
	y := q + r
	z := r + p
	_, ans := min([]int{x, y, z})
	fmt.Println(ans)
}
