package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type As [][]int

func (s As) Less(i, j int) bool {
	if s[i][0] == s[j][0] {
		return s[i][1] > s[j][1]
	}
	return s[i][0] < s[j][0]
}

func (s As) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s As) Len() int {
	return len(s)
}

func main() {

	var n, m int
	fmt.Scan(&n, &m)
	as := make(As, n)

	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range as {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		as[i] = []int{a, b}
	}
	sort.Sort(as)

	st := make([]int, 0)
	ws := make([]int, m)
	var j int
	for i := range ws {
		for j < n && as[j][0]-1 == i {
			val := as[j][1]
			if ws[i] == 0 {
				if len(st) == 0 {
					ws[i] = val
				} else {
					st = append(st, val)
					sort.Sort(sort.Reverse(sort.IntSlice(st)))
					ws[i] = st[0]
					st = st[1:]
				}
			} else {
				st = append(st, val)
				sort.Sort(sort.Reverse(sort.IntSlice(st)))
			}
			j++
		}
		if ws[i] == 0 {
			if len(st) > 0 {
				ws[i] = st[0]
				st = st[1:]
			}
		}
	}

	var sum int
	for i := range ws {
		sum += ws[i]
	}

	fmt.Println(sum)
}
