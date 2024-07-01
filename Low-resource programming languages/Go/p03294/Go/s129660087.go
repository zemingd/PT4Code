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

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	n := scanInt()
	as := scanInts(n)

	var sum int
	for _, a := range as {
		sum += a - 1
	}

	fmt.Println(sum)
}
