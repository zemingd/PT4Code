package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(Scanner())
	m, _ := strconv.Atoi(Scanner())
	q, _ := strconv.Atoi(Scanner())
	x := make([][]int, n+1)
	for i := 0; i < n+1; i++ {
		x[i] = make([]int, n+1)
	}
	for i := 0; i < m; i++ {
		l, _ := strconv.Atoi(Scanner())
		r, _ := strconv.Atoi(Scanner())
		x[l][r]++
	}
	for i := 0; i < n+1; i++ {
		for j := 1; j < n+1; j++ {
			x[i][j] = x[i][j-1] + x[i][j]
		}
	}
	for i := 1; i < n+1; i++ {
		for j := 0; j < n+1; j++ {
			x[i][j] = x[i-1][j] + x[i][j]
		}
	}
	for i := 0; i < q; i++ {
		l, _ := strconv.Atoi(Scanner())
		r, _ := strconv.Atoi(Scanner())
		l--
		fmt.Println(x[r][r] + x[l][l] - x[l][r] - x[r][l])
	}
}
