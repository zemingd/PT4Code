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
	b := make([]int, n)
	a := make([]int, n)

	for i := 0; i < n-1; i++ {
		b[i] = nextInt()
	}
	sum := 0
	a[0] = b[0]
	a[n-1] = b[n-2]
	sum += a[0] + a[n-1]
	for i := 1; i < n-1; i++ {
		a[i] = min(b[i], b[i-1])
		sum += a[i]
	}

	fmt.Println(sum)

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // default=64*1024
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
