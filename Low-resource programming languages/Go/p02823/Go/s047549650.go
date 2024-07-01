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

	n := nextInt64()
	a := nextInt64()
	b := nextInt64()

	if (b-a-1)%2 == 1 {
		fmt.Println((b - a + 1) / 2)
		return
	}
	fmt.Println(min(b-1, n-a))

}
func min(a, b int64) int64 {
	if a > b {
		return b
	}
	return a
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt64() int64 {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
