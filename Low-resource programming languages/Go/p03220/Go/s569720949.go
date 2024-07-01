package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

type base struct {
	S int
	b float64
}

func main() {
	var n, t, a int
	fmt.Scan(&n, &t, &a)
	h := make([]int, n)
	b := make([]base, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	for i, _ := range h {
		fmt.Scan(&h[i])
		b[i].b = float64(t) - float64(h[i])*0.006
		b[i].S = i
	}
	for i, _ := range h {
		b[i].b = float64(a) - b[i].b
		if b[i].b < 0 {
			b[i].b *= -1
		}
	}
	sort.Slice(b, func(i, j int) bool {
		return b[i].b < b[j].b
	})
	fmt.Println(b[0].S)
}
