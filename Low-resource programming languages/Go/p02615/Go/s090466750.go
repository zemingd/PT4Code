package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

const (
	initialBufSize = 10000
	maxBufSize     = 1000000
)

func unset(s []int, i int) []int {
	if i >= len(s) {
		return s
	}
	return append(s[:i], s[i+1:]...)
}

func main() {

	var wtr = bufio.NewWriter(os.Stdout)
	var sc = bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)

	var N int
	sc.Scan()
	temp := strings.Split(sc.Text(), " ")
	N, _ = strconv.Atoi(temp[0])

	A := make([]int, N)

	sc.Scan()
	for i, s := range strings.Split(sc.Text(), " ") {
		A[i], _ = strconv.Atoi(s)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(A)))

	zone := []int{}
	var sum int
	for i, v := range A {
		if i != 0 {
			sum += zone[0]
			zone = unset(zone, 0)
		}
		zone = append(zone, v)
		if i != 0 {
			zone = append(zone, v)
		}

	}

	fmt.Fprintln(wtr, sum)
	_ = wtr.Flush()
}
