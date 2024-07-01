package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	A := nextInt64()
	B := nextInt64()
	N := nextInt64()

	var x int64
	if B > N {
		// Rが最大になるのは x == Nのとき
		x = N
	} else {
		// Rは全ての値を取ることができる。最大になるのは B-1のとき
		x = B - 1
	}
	fmt.Println(divfloor(A*x, B) - A*divfloor(x, B))
}

func divfloor(a, b int64) int64 {
	return int64(math.Floor(float64(a) / float64(b)))
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
