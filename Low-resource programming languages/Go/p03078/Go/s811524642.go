package main

import (
	"fmt"
	"sort"
)

func main() {
	var X, Y, Z, K int
	fmt.Scan(&X, &Y, &Z, &K)
	xx := readMultiple(X)
	xy := readMultiple(Y)
	xz := readMultiple(Z)
	sort.Sort(sort.Reverse(sort.IntSlice(xx)))
	sort.Sort(sort.Reverse(sort.IntSlice(xy)))
	sort.Sort(sort.Reverse(sort.IntSlice(xz)))
	t, i, j, k := 0, 0, 0, 0
	q := [][]int{
		[]int{xx[i] + xy[j] + xz[k], i, j, k},
	}
	for t < K {
		sort.Sort(byFirst(q))
		fmt.Println(q[0][0])
		i := q[0][1]
		j := q[0][2]
		k := q[0][3]
		q = q[1:]
		q = addIfNew(q, []int{xx[i+1] + xy[j] + xz[k], i + 1, j, k})
		q = addIfNew(q, []int{xx[i] + xy[j+1] + xz[k], i, j + 1, k})
		q = addIfNew(q, []int{xx[i] + xy[j] + xz[k+1], i, j, k + 1})
		t++
	}
}

func addIfNew(q [][]int, a []int) [][]int {
	for _, v := range q {
		if v[0] == a[0] && v[1] == a[1] && v[2] == a[2] && v[3] == a[3] {
			return q
		}
	}
	return append(q, a)
}

type byFirst [][]int

func (a byFirst) Len() int           { return len(a) }
func (a byFirst) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a byFirst) Less(i, j int) bool { return a[i][0] > a[j][0] }

func readMultiple(n int) []int {
	xi := []int{}
	for i := 0; i < n; i++ {
		j := 0
		fmt.Scan(&j)
		xi = append(xi, j)
	}
	return xi
}
