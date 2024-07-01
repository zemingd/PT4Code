package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func gcdiv(a, b int) int {
	big := max(a, b)
	small := min(a, b)
	if small == 0 {
		return big
	}
	return gcdiv(big-small, small)
}

func main() {
	A := readint()
	B := readint()
	gcd := gcdiv(A, B)
	ans := A * B / gcd
	fmt.Println(ans)
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
