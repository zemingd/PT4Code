package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var N int
	fmt.Scan(&N)
	v := make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&v[i])
	}
	sort.Float64s(v)
	for i := 0; i < N-1; i++ {
		v[i+1] = (v[i] + v[i+1]) / 2.0
	}
	fmt.Fprintln(wtr, v[N-1])

	_ = wtr.Flush()
}
