package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func nextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextStr())
	return i
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

type scores struct {
	now int
	max int
	idx int
}

func main() {
	scanner.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()
	P := make([]int, n)
	C := make([]int, n)

	for i := range P {
		P[i] = nextInt()
	}

	for i := range C {
		C[i] = nextInt()
	}

	// turn 0
	result := make([]scores, n)
	for i := 0; i < n; i++ {
		result[i].idx = i
	}

	// turn 1
	for j := 0; j < n; j++ {
		result[j].idx = P[result[j].idx] - 1
		result[j].now += C[result[j].idx]
		result[j].max = result[j].now
	}

	// turn 2..k
	for i := 1; i < k; i++ {
		for j := 0; j < n; j++ {
			result[j].idx = P[result[j].idx] - 1
			result[j].now += C[result[j].idx]
			result[j].max = max(result[j].max, result[j].now)
		}
	}

	ans := result[0].max
	for j := 1; j < n; j++ {
		ans = max(result[j].max, ans)
	}

	fmt.Println(ans)
}
