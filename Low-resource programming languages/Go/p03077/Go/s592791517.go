package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func readInts(n int) []int {
	result := make([]int, n)
	for i := 0; i < n; i++ {
		result[i] = nextInt()
	}
	return result
}

func main() {
	N := nextInt()
	MS := [5]int{}
	HS := [6]int{}
	HS[0] = N
	for i := 0; i < 5; i++ {
		MS[i] = nextInt()
	}
	var TIME int
	for HS[5] < N {
		for i := 4; i >= 0; i-- {
			moved := move(HS[i], MS[i])
			HS[i+1] += move(HS[i], MS[i])
			HS[i] -= moved
		}
		TIME++
	}
	fmt.Println(TIME)
}

func move(h, cap int) int {
	ret := h
	if cap < h {
		ret = cap
	}
	return ret
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
