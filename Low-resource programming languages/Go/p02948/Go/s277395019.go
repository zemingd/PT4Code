package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type task struct{ a, b int }
type tasks []task

func (t tasks) Len() int      { return len(t) }
func (t tasks) Swap(i, j int) { t[i], t[j] = t[j], t[i] }
func (t tasks) Less(i, j int) bool {
	if t[i].b == t[j].b {
		return t[i].a > t[j].a
	}
	return t[i].b > t[j].b
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	ts := tasks(make([]task, n))
	for i := range ts {
		sc.Scan()
		ts[i].a, _ = strconv.Atoi(sc.Text())
		sc.Scan()
		ts[i].b, _ = strconv.Atoi(sc.Text())
	}

	sort.Sort(ts)
	ti := 0
	ans := 0
lb:
	for i := 0; i <= m; i++ {
		for i+ts[ti].a > m {
			ti++
			if ti == len(ts) {
				break lb
			}
		}
		ans += ts[ti].b
		ti++
		if ti == len(ts) {
			break lb
		}
	}
	fmt.Println(ans)
}
