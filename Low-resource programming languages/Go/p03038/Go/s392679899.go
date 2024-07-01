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

	for _, c := range cl {
		sort.Ints(al)
		for i, a := range al {
			if a >= c || i == bcm[c] {
				if i == 0 {
					goto G
				}
				break
			}
			al[i] = c
		}
	}

G:

	t := 0
	for _, a := range al {
		t += a
	}
	fmt.Println(t)
}
