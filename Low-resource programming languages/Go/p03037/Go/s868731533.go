package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	var l = make([]int, m)
	var r = make([]int, m)

	var ran = make([][]int, m)

	for i := range l {
		fmt.Scan(&l[i], &r[i])
		for j := l[i]; j <= r[i]; j++ {
			ran[i] = append(ran[i], j)
		}
	}
	if len(ran) == 1 {
		fmt.Println(r[0] - l[0] + 1)
		return
	}

	var tmp [][]int
	tmp = append(tmp, f(ran[0], ran[1]))

	for i := 2; i < m; i++ {
		tmp = append(tmp, f(tmp[len(tmp)-1], ran[i]))
	}
	fmt.Println(len(tmp[len(tmp)-1]))
}
func f(a []int, b []int) []int {
	var res []int

	for _, v := range a {
		for j := range b {
			if v == b[j] {
				res = append(res, v)
			}
		}
	}
	return res
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}