package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

const (
	BASE = 1000000007
)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a := make([]uint64, n)
	for i := 0; i < n; i++ {
		a[i] = uint64(nextInt())
	}

	var r uint64 = 0
	var m uint64 = 0

	for i := n - 2; i >= 0; i-- {
		m = (m + a[i+1]) % BASE
		r = (r + (a[i] * m)) % BASE
	}

	fmt.Println(r)
}
