package main

import (
	"fmt"
	"os"
)

type testimony struct {
	x int
	y int
}

func genRow(table [][]int, row []int, i int, n int) [][]int {
	if i == n {
		row2 := make([]int, len(row))
		copy(row2, row)
		return append(table, row2)
	}
	row[i] = 1
	table = genRow(table, row, i+1, n)
	row[i] = 0
	table = genRow(table, row, i+1, n)
	return table
}

func run() int {
	var n int
	fmt.Scanf("%d\n", &n)

	testimonyTable := make([][]testimony, 0)

	for i := 1; i <= n; i++ {
		var a int
		fmt.Scanf("%d\n", &a)
		tt := make([]testimony, a)
		for j := 0; j < a; j++ {
			fmt.Scanf("%d %d\n", &tt[j].x, &tt[j].y)
		}
		testimonyTable = append(testimonyTable, tt)
	}

	table := make([][]int, 0)
	table = genRow(table, make([]int, n), 0, n)

	maxCount := 0
	for _, row := range table {
		count := 0
		for i := 0; i < len(row); i++ {
			// fmt.Println("i:", i)
			if row[i] == 0 {
				continue
			}

			honest := true
			for _, t := range testimonyTable[i] {
				// fmt.Println("t:", t, "row", row[t.x-1])
				if row[t.x-1] != t.y {
					honest = false
					break
				}
			}

			if !honest {
				count = 0
				break
			}

			count++
		}

		// fmt.Println(row, count)

		if maxCount < count {
			maxCount = count
		}
	}

	fmt.Println(maxCount)

	return 0
}

func main() {
	os.Exit(run())
}
