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
func nextInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = nextInt()
	}
	return ints
}
func sum(takoyakis []int) (total int) {
	n := len(takoyakis)
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if j <= i {
				continue
			}
			total += takoyakis[i] * takoyakis[j]
		}
	}
	return
}

func main() {
	n := nextInt()
	ints := nextInts(n)
	total := sum(ints)
	fmt.Println(total)
}
