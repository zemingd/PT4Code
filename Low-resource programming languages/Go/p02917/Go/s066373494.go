package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	b := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		b[i] = nextInt()
	}

	sum := 0
	for i := 0; i < n; i++ {
		if i == 0 {
			sum += b[0]
		} else if i == n-1 {
			sum += b[n-2]
		} else {
			sum += min(b[i-1], b[i])
		}
	}
	fmt.Println(sum)
}