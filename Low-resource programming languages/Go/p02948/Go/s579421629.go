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
	if s[i][1] == s[j][1] {
		return s[i][0] > s[j][0]
	}
	return s[i][1] > s[j][1]
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

	var cnt int
	ws := make([]int, m)
	for i := range as {
		days, val := as[i][0], as[i][1]
		for j := m - days; j >= 0; j-- {
			if ws[j] == 0 {
				ws[j] = val
				cnt++
				break
			}
		}
		if cnt >= m {
			break
		}
	}

	var sum int
	for i := range ws {
		sum += ws[i]
	}

	fmt.Println(sum)
}
