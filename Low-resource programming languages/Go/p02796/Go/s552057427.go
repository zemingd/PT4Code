package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type arm struct{ x, l int }
type arms []arm

func (a arms) Len() int           { return len(a) }
func (a arms) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a arms) Less(i, j int) bool { return a[i].x > a[j].x }

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	n := scanInt()
	as := arms(make([]arm, n))
	for i := range as {
		as[i].x, as[i].l = scanInt(), scanInt()

	}
	sort.Sort(as)

	ans := 1
	l := as[0].x - as[0].l
	for i := 1; i < n; i++ {
		if as[i].x+as[i].l <= l {
			ans++
			l = as[i].x - as[i].l
		}
	}
	fmt.Println(ans)
}
