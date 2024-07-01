package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	root := make([]int, N + 2)

	for i := 1; i <= N; i++ {
		root[i] = nextInt()
	}

	originalCost := 0
	for i := 0; i <= N; i++ {
		originalCost += distance(root[i], root[i+1])
	}

	for i := 1; i <= N; i++ {
		fmt.Println(originalCost + distance(root[i-1], root[i+1]) - distance(root[i-1], root[i]) - distance(root[i], root[i+1]))
	}
}

func distance(a, b int) int {
	if a > b {
		return a - b
	} else {
		return b - a
	}
}
