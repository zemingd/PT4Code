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
	var lineInt []int
	for i := range lineString {
		v, _ := strconv.Atoi(lineString[i])
		lineInt = append(lineInt, v)
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
		return -1 * v
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

func main() {
	n, _ := strconv.Atoi(nextLine())
	h := nextLineInt()

	cost := make([]int, n)

	cost[0] = 0
	cost[1] = abs(h[1] - h[0])

	for i := 1; i < n-1; i++ {
		cost[i+1] = min(cost[i-1]+abs(h[i-1]-h[i+1]), cost[i]+abs(h[i]-h[i+1]))
	}

	fmt.Println(cost[n-1])

}
