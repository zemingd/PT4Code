package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = nextInt()
	}
	return ints
}

func sortDecrease(ar []int) []int {
	sort.Sort(sort.Reverse(sort.IntSlice(ar)))
	return ar
}

func maxes(ints []int) []int {
	result := make([]int, len(ints))
	sorted := sortDecrease(append([]int{}, ints...))

	first := sorted[0]
	second := sorted[1]

	for i, v := range ints {
		if v == first {
			result[i] = second
		} else {
			result[i] = first
		}
	}
	return result
}

func main() {
	n := nextInt()
	ar := nextInts(n)
	results := maxes(ar)
	for _, v := range results {
		fmt.Println(v)
	}
}
