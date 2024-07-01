package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type rec struct {
	v, idx int
}
type recs []rec

func (r recs) Len() int {
	return len(r)
}
func (r recs) Swap(i, j int) {
	r[i], r[j] = r[j], r[i]
}

type byIdx struct {
	recs
}
type byValue struct {
	recs
}

func (b byIdx) Less(i, j int) bool {
	return b.recs[i].idx < b.recs[j].idx
}
func (b byValue) Less(i, j int) bool {
	return b.recs[i].v < b.recs[j].v
}

func main() {
	var N int
	fmt.Scan(&N)
	X := make([]rec, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range X {
		sc.Scan()
		X[i].v, _ = strconv.Atoi(sc.Text())
		X[i].idx = i
	}
	sort.Sort(byValue{X})
	m1 := X[len(X)/2-1].v
	m2 := X[len(X)/2].v
	sort.Sort(byIdx{X})
	for i := 0; i < len(X); i++ {
		if X[i].v <= m1 {
			fmt.Println(m2)
		} else {
			fmt.Println(m1)
		}
	}
}
