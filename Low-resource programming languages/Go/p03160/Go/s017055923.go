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

func knap(count, weightLimit int, items [][2]int) int {
	values := make([][]int, count + 1)
	for i := 0; i < count + 1; i++ {
		values[i] = make([]int, weightLimit + 1)
	}

	for i := 0; i < count + 1; i++ {
		for j := 0; j < weightLimit + 1; j++ {
			if i == 0 || j == 0 {
				values[i][j] = 0
			} else if items[i - 1][0] > j {
				values[i][j] = values[i - 1][j]
			} else {
				values[i][j] = maxInt(values[i-1][j], values[i-1][j-items[i - 1][0]] + items[i - 1][1])
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
	items := make([][2]int, count)
	for i := 0; i < count; i++ {
		items[i][0] = ScanInt()
		items[i][1] = ScanInt()
	}
	fmt.Println(knap(count, weightLimit, items))
}
