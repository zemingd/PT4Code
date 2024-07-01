package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type rec struct {
	a, b int
}
type recs []rec

func (r recs) Len() int {
	return len(r)
}
func (r recs) Less(i, j int) bool {
	return r[i].a < r[j].a
}
func (r recs) Swap(i, j int) {
	r[i], r[j] = r[j], r[i]
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	rs := make([]rec, n)
	for i := 0; i < n; i++ {
		rs[i].a = nextInt(sc)
		rs[i].b = nextInt(sc)
	}
	sort.Sort(recs(rs))
	for i := 0; i < n; i++ {
		if k-rs[i].b > 0 {
			k -= rs[i].b
		} else {
			fmt.Println(rs[i].a)
			return
		}
	}
}
