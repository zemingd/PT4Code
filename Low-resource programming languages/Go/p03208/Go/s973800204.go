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
	k := nextInt()
	hl := make([]int, n)

	for i := 0; i < n; i++ {
		hl[i] = nextInt()
	}
	sort.Ints(hl)

	minrun := hl[k-1] - hl[0]

	for i := 1; i < n-k+1; i++ {
		runsum := hl[k-1+i] - hl[i]
		minrun = min(minrun, runsum)
	}

	fmt.Println(minrun)
}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
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
