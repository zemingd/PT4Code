package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"sort"
	"strconv"
)

type IntSlice []int

func (p IntSlice) Len() int {
	return len(p)
}

func (p IntSlice) Less(i, j int) bool {
	return p[i] < p[j]
}

func (p IntSlice) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func Solve(stdin io.Reader, stdout io.Writer) {
	sc := bufio.NewScanner(stdin)

	/* 単語ごとに入力するならこれ */
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	m, _ := strconv.Atoi(sc.Text())

	jobs := make(map[int][]int)

	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		jobs[a] = append(jobs[a], b)
	}

	for k := range jobs {
		sort.Sort(sort.Reverse(IntSlice(jobs[k])))
	}

	sal := 0

	for i := 0; i < m; i++ {
		max := 0
		sel := 0
		for k := range jobs {
			if k + i <= m {
				if jobs[k][0] >= max {
					sel = k
					max = jobs[k][0]
				}
			}
		}
		sal += max
		if len(jobs[sel]) <= 1 {
			delete(jobs, sel)
		} else {
			jobs[sel] = jobs[sel][1:]
		}
	}

	/* 出力用 */
	_, _ = fmt.Fprintf(stdout, "%v\n", sal)
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}