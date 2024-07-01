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

func nextInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = nextInt()
	}
	return ints
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	sc.Split(bufio.ScanWords)
	a := nextInts(n)

	result := make([]int, 0)
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			result = append(result, a[i]*a[j])
		}
	}
	sort.Sort(sort.IntSlice(result))
	fmt.Println(result[k-1])
}
