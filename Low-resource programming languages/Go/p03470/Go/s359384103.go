package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var d = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}
	idx, up := maxInt(d)
	d = delete(d, idx)
	count := 1

	for i := 0; i < len(d); i++ {
		idx, max := maxInt(d)
		d = delete(d, idx)
		if max < up {
			count++
		} else {
			break
		}
	}

	fmt.Println(count)
}

func maxInt(a []int) (int, int) {
	max := a[0]
	var idx int
	for i, e := range a {
		if e > max {
			max = e
			idx = i
		}
	}
	return idx, max
}

func delete(s []int, i int) []int {
	s = append(s[:i], s[i+1:]...)
	n := make([]int, len(s))
	copy(n, s)
	return n
}
