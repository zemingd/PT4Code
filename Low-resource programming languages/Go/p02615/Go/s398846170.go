package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()
	alist := make([]int, n)

	min := 10000000000
	sum := 0
	for i := 0; i < n; i++ {
		alist[i] = nextInt()
		sum += alist[i]
		if alist[i] < min {
			min = alist[i]
		}
	}
	sort.Ints(alist)

	//fmt.Println(n, alist)
	fmt.Println(sum - min)
}

// ---- readfunc
func scanInit() {
	const cap = 64 * 1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
