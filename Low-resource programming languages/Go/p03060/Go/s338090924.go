package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()
	v := make([]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		v[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		c[i] = v[i] - nextInt()
	}

	maxans := 0
	for i := 0; i < n; i++ {
		if c[i] > 0 {
			maxans += c[i]
		}
	}
	fmt.Println(maxans)
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
