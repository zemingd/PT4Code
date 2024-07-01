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
	H := nextInt()
	M := nextInt()

	thm := float64(M) / 60 * math.Pi * 2
	thh := (float64(H) + float64(M)/60) / 12 * math.Pi * 2

	if thm == thh {
		fmt.Println(abs(A - B))
	} else {
		fmt.Printf("%.16f\n", math.Sqrt(float64(A*A+B*B)-math.Cos(absf(thm-thh))*float64(2*A*B)))
	}
}

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func absf(a float64) float64 {
	if a > 0 {
		return a
	}
	return -a
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
