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
	n := nextInt()
	m := nextInt()
	h := make([]int, n)
	good := make([]bool, n)
	for i := 0; i < n; i++ {
		h[i] = nextInt()
		good[i] = true
	}
	for i := 0; i < m; i++ {
		ai := nextInt() - 1
		bi := nextInt() - 1
		if h[ai] > h[bi] {
			good[bi] = false
		} else if h[ai] < h[bi] {
			good[ai] = false
		} else {
			good[ai] = false
			good[bi] = false
		}
	}
	ans := 0
	for i := 0; i < n; i++ {
		if good[i] {
			ans++
		}
	}
	fmt.Println(ans)
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
