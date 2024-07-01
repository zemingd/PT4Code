package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	var table [501][501]int

	var N, M, Q int
	fmt.Scan(&N, &M, &Q)
	for i := 0; i < M; i++ {
		sc.Scan()
		l, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		r, _ := strconv.Atoi(sc.Text())
		table[l][r]++
	}
	for i := 1; i <= N; i++ {
		for j := 1; j <= N; j++ {
			table[i][j] += table[i-1][j] + table[i][j-1] - table[i-1][j-1]
		}
	}
	w := bufio.NewWriter(os.Stdout)
	for i := 0; i < Q; i++ {
		sc.Scan()
		p, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		q, _ := strconv.Atoi(sc.Text())

		ans := table[q][q] - table[p-1][q] - table[q][p-1] + table[p-1][p-1]
		fmt.Fprintln(w, ans)
	}
	w.Flush()
}
