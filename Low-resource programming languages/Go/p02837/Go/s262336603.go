package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := readint() // 人数
	A := make([]int, N+1)
	x := make([][]int, N+1)
	y := make([][]int, N+1)
	for i := 1; i <= N; i++ {
		A[i] = readint()
		x[i] = make([]int, N+1)
		y[i] = make([]int, N+1)
		for j := 1; j <= A[i]; j++ {
			x[i][j] = readint()
			y[i][j] = readint()
		}
	}

	ans := 0
	for bits := 1; bits < (1 << uint(N)); bits++ {
		ok := true
		for i := 1; i <= N; i++ {
			if (bits & (1 << uint(i-1))) == 0 {
				continue
			}
			for j := 1; j <= A[i]; j++ {
				shift := uint(max(0, x[i][j]-1))
				if (((bits >> shift) & 1) ^ y[i][j]) == 1 {
					ok = false
				}
			}
		}
		if ok {
			ans = max(ans, counter(bits))
		}
	}
	fmt.Println(ans)
}

func max(x, y int) int {
	if x < y {
		return y
	}
	return x
}

func counter(x int) int {
	if x == 0 {
		return 0
	}
	return (x & 1) + counter(x>>1)
}

const (
	iobufsize = 1 * 1024 * 1024 // 1 MB
)

var stdinsc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, iobufsize), iobufsize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func readint() int {
	stdinsc.Scan()
	v, err := strconv.Atoi(stdinsc.Text())
	if err != nil {
		panic(err)
	}
	return v
}

func readstr() string {
	stdinsc.Scan()
	return stdinsc.Text()
}

func pow(x, y int) int {
	if y == 0 {
		return 1
	}
	return x * pow(x, y-1)
}
