package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func maxInt(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func knap(count, weightLimit int, weights []int, vals []int) int {
	values := make([][]int, count + 1)
	for i := 0; i < count + 1; i++ {
		values[i] = make([]int, weightLimit + 1)
	}

	for i := 1; i <= count; i++ {
		for j := 0; j <= weightLimit; j++ {
			values[i][j] = values[i - 1][j]
			if weights[i - 1] <= j {
				values[i][j] = maxInt(values[i][j], values[i-1][j-weights[i - 1]] + vals[i - 1])
			}
		}
	}
	return values[count][weightLimit]
}

func ScanInt() int {
	sc.Scan()
	res, _ := strconv.Atoi(sc.Text())
	return res
}

func ScanIntArray(size int) []int {
	res := make([]int, size)
	for i := 0; i < size; i++ {
		sc.Scan()
		res[i], _ = strconv.Atoi(sc.Text())
	}
	return res
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	count := ScanInt()
	weightLimit := ScanInt()
	weights := make([]int, count)
	vals := make([]int, count)
	for i := 0; i < count; i++ {
		weights[i] = ScanInt()
		vals[i] = ScanInt()
	}
	fmt.Println(knap(count, weightLimit, weights, vals))
}
