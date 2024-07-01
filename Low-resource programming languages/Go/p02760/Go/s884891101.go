package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

const (
	line       int = 3
	pushedFlag int = 0
)

func main() {
	scanner.Split(bufio.ScanWords)
	bingo := make([][]int, line)
	for i := 0; i < line; i++ {
		bingo[i] = scanInts(line)
	}

	n := scanInt()
	pushed := make([]int, n)
	for i := 0; i < n; i++ {
		pushed[i] = scanInt()
	}

	for i := 0; i < line; i++ {
		for j := 0; j < line; j++ {
			for k := 0; k < n; k++ {
				if bingo[i][j] == pushed[k] {
					bingo[i][j] = pushedFlag
					break
				}
			}
		}
	}

	if isBingo(bingo) {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}

func isBingo(bingo [][]int) bool {

	for i := 0; i < line; i++ {
		if bingo[i][0] == bingo[i][1] && bingo[i][0] == bingo[i][2] {
			return true
		}

		if bingo[0][i] == bingo[1][i] && bingo[0][i] == bingo[2][i] {
			return true
		}
	}

	if (bingo[0][0] == bingo[1][1] && bingo[0][0] == bingo[2][2]) ||
		(bingo[2][0] == bingo[1][1] && bingo[2][0] == bingo[0][2]) {
		return true
	}
	return false
}

func scanInt() int {
	i, _ := strconv.Atoi(scanText())
	return i
}

func scanInts(size int) []int {
	ints := make([]int, size)
	for i := 0; i < size; i++ {
		ints[i] = scanInt()
	}
	return ints
}

func scanText() string {
	scanner.Scan()
	return scanner.Text()
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}
