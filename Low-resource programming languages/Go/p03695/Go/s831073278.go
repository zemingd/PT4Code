package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const (
	A = iota
	B
	C
	D
	E
	F
	G
	H
	I
)

func operate(x int) int {
	if x < 400 {
		return A
	} else if x < 800 {
		return B
	} else if x < 1200 {
		return C
	} else if x < 1600 {
		return D
	} else if x < 2000 {
		return E
	} else if x < 2400 {
		return F
	} else if x < 2800 {
		return G
	} else if x < 3200 {
		return H
	} else {
		return I
	}
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	a := make([]int, n)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	sort.Ints(a)

	aggregate := make(map[int]int)
	for i := range a {
		aggregate[operate(a[i])] = aggregate[operate(a[i])] + 1
	}

	min := len(aggregate)
	for k := range aggregate {
		if k == I {
			min = min - 1
			break
		}
	}
	if min < 1 {
		min = 1
	}

	max := 0
	for k := range aggregate {
		if k == I {
			max = max + aggregate[k]
			continue
		}
		max = max + 1
	}
	if max > 8 {
		max = 8
	}

	fmt.Printf("%d %d\n", min, max)
}
