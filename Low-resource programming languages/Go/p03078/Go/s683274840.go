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
	maxBufSize     = 100000 + 1024
)

func main() {

	scanner := bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	scanner.Buffer(buf, maxBufSize)

	/* 1st line X Y Z K */
	var x, y, z, k int
	fmt.Scan(&x, &y, &z, &k)

	/* 2nd line Ai */
	scanner.Scan()
	strA := strings.Split(scanner.Text(), " ")

	/* 3rd line Bi */
	scanner.Scan()
	strB := strings.Split(scanner.Text(), " ")

	/* 4th line Ci */
	scanner.Scan()
	strC := strings.Split(scanner.Text(), " ")

	na, nb, nc := make(Int64Slice, x), make(Int64Slice, y), make(Int64Slice, z)
	for i, s := range strA {
		na[i], _ = strconv.ParseInt(s, 10, 64)
	}
	for i, s := range strB {
		nb[i], _ = strconv.ParseInt(s, 10, 64)
	}
	for i, s := range strC {
		nc[i], _ = strconv.ParseInt(s, 10, 64)
	}

	nab := make(Int64Slice, x*y)
	i := 0
	for _, a := range na {
		for _, b := range nb {
			nab[i] = a + b
			i++
		}
	}
	sort.Sort(nab)
	m := min(len(nab), k)
	n := make(Int64Slice, m*z)
	j := 0
	for i := 0; i < m; i++ {
		for _, c := range nc {
			n[j] = nab[i] + c
			j++
		}
	}
	sort.Sort(n)
	for i := 0; i < k; i++ {
		fmt.Println(n[i])
	}

}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

type Int64Slice []int64

func (s Int64Slice) Len() int {
	return len(s)
}
func (s Int64Slice) Less(i, j int) bool {
	return s[j] < s[i]
}
func (s Int64Slice) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}
