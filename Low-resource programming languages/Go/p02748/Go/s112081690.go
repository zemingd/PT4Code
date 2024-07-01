package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	a, b, m := nextInt(), nextInt(), nextInt()

	ap := nextInts(a)
	bp := nextInts(b)

	result := 10000000000
	for i := 0; i < m; i++ {
		x, y, c := nextInt(), nextInt(), nextInt()
		s := ap[x-1] + bp[y-1] - c
		if result > s {
			result = s
		}
	}
	for _, an := range ap {
		for _, bn := range bp {
			sum := an + bn
			if result > sum {
				result = sum
			}
		}
	}
	fmt.Println(result)
}

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
