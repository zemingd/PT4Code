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
	for k := range bcm {
		cl = append(cl, k)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(cl)))

	last := 0
	sort.Ints(al)
	for _, c := range cl {
		for i := 0; i < bcm[c]; i++ {
			if i+last == len(al) || al[i+last] >= c {
				goto G
			}
			al[i+last] = c
		}
		last += bcm[c]
	}

G:

	t := 0
	for _, a := range al {
		t += a
	}
	fmt.Println(t)
}
