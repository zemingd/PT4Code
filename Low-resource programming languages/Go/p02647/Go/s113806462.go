package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	N := nextInt()
	K := nextInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	var answer []int
	var x1, x2 int
	for i := 0; i < K; i++ {
		answer = make([]int, N)
		for j := 0; j < N; j++ {
			x1 = (j + 1) - A[j] - 1
			x2 = (j + 1) + A[j] - 1
			if x1 < 0 {
				x1 = 0
			}
			if x2 >= N {
				x2 = N - 1
			}
			for k := x1; k <= x2; k++ {
				answer[k]++
			}
		}
		A = answer
	}
	for i := 0; i < N; i++ {
		fmt.Print(answer[i], " ")
	}
}
