package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := readint()
	A := make([]int, N)
	minA := 200001
	for i := 0; i < N; i++ {
		A[i] = readint()
		minA = min(minA, A[i])
	}
	if minA != 1 {
		fmt.Println(-1)
		return
	}
	b := 0
	ai := 0
	for i := 1; i <= N; i++ {
		for ; ai < N && A[ai] != i; ai++ {
			b++
		}
		ai++
	}
	fmt.Println(b)
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
	if y < 1 {
		return 1
	}
	return x * pow(x, y-1)
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
