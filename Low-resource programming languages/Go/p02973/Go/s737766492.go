package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
)

func init() {
	sc.Split(bufio.ScanWords)
}

func readInts(n int) []int {
	a := make([]int, n)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)
	a := readInts(n)
	d := make([]int, 0, n)
	for _, e := range a {
		i := sort.Search(len(d), func(i int) bool { return d[i] < e })
		if i == len(d) {
			d = append(d, e)
		} else {
			d[i] = e
		}
	}
	fmt.Println(len(d))
}
