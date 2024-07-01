package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

type d struct {
	idx, x, y, c int
}

type ds []d

func (dd ds) Len() int {
	return len(dd)
}
func (dd ds) Swap(i, j int) {
	dd[i], dd[j] = dd[j], dd[i]
}
func (dd ds) Less(i, j int) bool {
	return dd[i].c < dd[j].c
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	A := nextInt(sc)
	B := nextInt(sc)
	M := nextInt(sc)
	a := make([]int, A)
	mina := int(1e8)
	for i := range a {
		a[i] = nextInt(sc)
		mina = min(mina, a[i])
	}
	b := make([]int, B)
	minb := int(1e8)
	for i := range b {
		b[i] = nextInt(sc)
		minb = min(minb, b[i])
	}
	minc := mina + minb
	disc := int(1e11)
	for i := 0; i < M; i++ {
		x := nextInt(sc)
		x--
		y := nextInt(sc)
		y--
		c := nextInt(sc)
		if x < A && y < B {
			disc = min(disc, a[x]+b[y]-c)
		}
	}
	fmt.Println(min(disc, minc))
	// sort.Sort(sort.Reverse(ds(discounts)))
	// fmt.Println("A", A, "a", a, "B", B, "b", b, "minc", minc, "M", M, "disc", discounts)
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
