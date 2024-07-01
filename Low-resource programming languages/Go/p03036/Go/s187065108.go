package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func scanInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = scanInt()
	}
	return sl
}

func scanStrings(n int) []string {
	sl := make([]string, n)
	for i := range sl {
		sl[i] = scanString()
	}
	return sl
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	r, D, x := scanInt(), scanInt(), scanInt()
	for i := 1; i <= 10; i++ {
		x = r*x - D
		fmt.Println(x)
	}
}
