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
	var C [501][501]int

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
		C[i][1] = table[i][1]
		for j := 2; j <= N; j++ {
			C[i][j] = C[i][j-1] + table[i][j]
		}
	}
	w := bufio.NewWriter(os.Stdout)
	for i := 0; i < Q; i++ {
		sc.Scan()
		p, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		q, _ := strconv.Atoi(sc.Text())

		ans := 0
		for j := p; j <= q; j++ {
			ans += C[j][q] - C[j][p-1]
		}
		fmt.Fprintln(w, ans)
	}
	w.Flush()
}
