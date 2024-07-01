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

func main() {
	var N int
	var A, B [101]int
	fmt.Scanf("%d", &N)

	line := nextLine()
	cols := strings.Split(line, " ")
	for i := 1; i < N; i++ {
		B[i], _ = strconv.Atoi(cols[i-1])
	}

	for i := 1; i <= N; i++ {
		if i == 1 {
			A[i] = B[i]
		} else if i == N {
			A[i] = B[i-1]
		} else if B[i-1] <= B[i] {
			A[i] = B[i-1]
		} else {
			A[i] = B[i]
		}
	}

	ans := 0
	for i := 1; i <= N; i++ {
		ans += A[i]
	}
	fmt.Printf("%d", ans)
}
