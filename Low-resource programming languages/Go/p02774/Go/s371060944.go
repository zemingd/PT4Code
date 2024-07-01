package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanInt() int {
	scanner.Scan()
	a, err := strconv.Atoi(scanner.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func scanInt64() int64 {
	scanner.Scan()
	a, err := strconv.ParseInt(scanner.Text(), 10, 64)
	if err != nil {
		fmt.Println(err)
	}
	return a
}

type int64Arr []int64

func (a int64Arr) Len() int           { return len(a) }
func (a int64Arr) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a int64Arr) Less(i, j int) bool { return a[i] < a[j] }

func main() {
	scanner.Split(bufio.ScanWords)

	n := scanInt()
	k := scanInt()

	a := make([]int64, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt64()
	}

	r := make(int64Arr, n*(n-1)/2)

	idx := 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			r[idx] = a[i] * a[j]
			idx++
		}
	}
	sort.Sort(r)
	fmt.Println(r[k-1])
}