package main

import (
	"fmt"
	"io"
	"os"
	"sort"

)

func main() {
	solve(os.Stdin, os.Stdout)
}

type inInfo struct {
	in    int
	after int
}

type inInfoSorter []inInfo

func (a inInfoSorter) Len() int      { return len(a) }
func (a inInfoSorter) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a inInfoSorter) Less(i, j int) bool {
	switch {
	case a[i].in > a[j].in:
		return true
	case a[i].in < a[j].in:
		return false
	case a[i].after > a[j].after:
		return true
	default:
		return false
	}
}

func sum(w []int) int {
	s := 0
	for _, v := range w {
		s += v
	}
	return s
}

type ptr []int

func (x ptr) top(i int) int {
	ptrs := []int(x)
	var his []int
	cur := i
	for ; cur >= 0 && ptrs[cur] != cur; cur = ptrs[cur] {
		his = append(his, cur)
	}
	for _, v := range his {
		ptrs[v] = cur - 1
	}
	if cur >= 0 {
		ptrs[cur] = cur - 1
	}
	return cur
}

func solve(stdin io.Reader, stdout io.Writer) {
	var n, m int
	var infos []inInfo

	fmt.Fscanln(stdin, &n, &m)

	for i := 0; i < n; i++ {
		var info inInfo
		fmt.Fscanln(stdin, &info.after, &info.in)
		infos = append(infos, info)
	}

	sort.Sort(inInfoSorter(infos))

	var ans = make([]int, m)
	var p = make([]int, m)
	for i := range p {
		p[i] = i
	}

	for _, w := range infos {
		i := ptr(p).top(m - w.after)
		if i >= 0 {
			ans[i] = w.in
		}
	}

	fmt.Fprintln(stdout, sum(ans))

}

