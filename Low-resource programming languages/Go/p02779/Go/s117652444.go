package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := readint()
	A := make(map[int]int, N)
	unique := true
	for i := 0; i < N; i++ {
		ai := readint()
		if _, ok := A[ai]; ok {
			unique = false
		}
		A[ai] = ai
	}
	if unique {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
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
