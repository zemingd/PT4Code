package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	m, _ := strconv.Atoi(sc.Text())

	al := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		al[i] = a
	}

	bcm := make(map[int]int, m)
	for i := 0; i < m; i++ {
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		c, _ := strconv.Atoi(sc.Text())
		bcm[c] += b
	}

	cl := make([]int, m)
	for c := range bcm {
		cl = append(cl, c)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(cl)))

	last := 0
	sort.Ints(al)
	for _, c := range cl {
		end := min(len(al), last+bcm[c])
		for i := last; i < end && al[i] < c; i++ {
			al[i] = c
		}
		if last = end; last >= len(al) {
			break
		}
	}

	fmt.Println(sum(al))
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func sum(l []int) int {
	t := 0
	for _, v := range l {
		t += v
	}
	return t
}
