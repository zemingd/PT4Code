package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func main() {
	const (
		max = 1000000
		min = -1000000
	)
	k, x := nextInt(), nextInt()

	start := x - k + 1
	if start < min {
		start = min
	}
	end := x + k - 1
	if end > max {
		end = max
	}

	for i := start; i < end+1; i++ {
		fmt.Print(i)
		if i != end {
			fmt.Print(" ")
		}
	}
}
