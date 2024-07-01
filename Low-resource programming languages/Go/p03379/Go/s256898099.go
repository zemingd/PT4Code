package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()

	xs := make([]int, n)
	for i := range xs {
		xs[i] = nextInt()
	}

	ys := make([]int, n)
	copy(ys, xs)
	sort.Ints(ys)
	mid1 := ys[len(ys)/2-1]
	mid2 := ys[len(ys)/2]

	for _, x := range xs {
		if x <= mid1 {
			fmt.Println(mid2)
		} else {
			fmt.Println(mid1)
		}
	}
}
