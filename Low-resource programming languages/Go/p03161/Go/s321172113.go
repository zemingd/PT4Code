package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextLineInt() []int {
	lineString := strings.Split(nextLine(), " ")
	var lineInt = make([]int, len(lineString))
	for i := range lineString {
		lineInt[i], _ = strconv.Atoi(lineString[i])
	}
	return lineInt
}

func bool2int(b bool) int {
	if b {
		return 1
	} else {
		return 0
	}
}

func abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}

func min(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func d(a, b int) int {
	return abs(a - b)
}

func main() {
	var n, k int

	fmt.Scanf("%d %d", &n, &k)

	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &h[i])
	}

	cost := make([]int, n)

	for i := 0; i < n; i++ {
		cost[i] = 9223372036854775807
	}

	cost[0] = 0

	for i := 0; i < n-1; i++ {
		for j := 1; j < k+1; j++ {
			left := max(0, i-j+1)
			cost[i+1] = min(cost[i+1], cost[left]+abs(h[left]-h[i+1]))
		}
	}

	fmt.Println(cost[n-1])
}
