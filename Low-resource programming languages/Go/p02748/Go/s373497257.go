package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	A := nextInt()
	B := nextInt()
	M := nextInt()

	a := make([]int, A)
	b := make([]int, B)
	am := math.MaxInt32
	bm := math.MaxInt32

	for i := 0; i < A; i++ {
		a[i] = nextInt()
		am = min(am, a[i])
	}
	for i := 0; i < B; i++ {
		b[i] = nextInt()
		bm = min(bm, b[i])
	}

	cost := am + bm
	for i := 0; i < M; i++ {
		x := nextInt() - 1
		y := nextInt() - 1
		c := nextInt()

		cost = min(cost, a[x]+b[y]-c)
	}

	fmt.Println(cost)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}
