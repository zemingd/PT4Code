package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func scanSlice(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanSumP(n int) int {
	a := 1
	for i := 0; i < n; i++ {
		a *= scanInt()
	}
	return a
}

func div2(n int) int {
	count := 0
	for ; n%2 == 0; n /= 2 {
		count++
	}
	return count
}

func main() {
	sc.Split(bufio.ScanWords)
	n := scanInt()
	fmt.Println(div2(scanSumP(n)))
}
