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

	nCities := scanInt(sc)
	nTrains := scanInt(sc)
	nQuestions := scanInt(sc)

	tableSize := nCities + 1
	table := make([][]int, tableSize)
	table[0] = make([]int, tableSize)

	for i := 0; i < nTrains; i++ {
		start := scanInt(sc)
		end := scanInt(sc)
		if table[start] == nil {
			table[start] = make([]int, tableSize)
		}
		table[start][end] += 1
	}

	// 累積和にする。
	for x := 1; x < tableSize; x++ {
		if table[x] == nil {
			table[x] = make([]int, tableSize)
		}
		for y := 1; y < tableSize; y++ {
			table[x][y] += table[x-1][y] + table[x][y-1] - table[x-1][y-1]
		}
	}

	out := bufio.NewWriter(os.Stdout)
	for i := 0; i < nQuestions; i++ {
		start := scanInt(sc)
		end := scanInt(sc)
		cnt := table[end][end] - table[end][start-1] - table[start-1][end] + table[start-1][start-1]
		fmt.Fprintln(out, cnt)
	}
	out.Flush()
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
