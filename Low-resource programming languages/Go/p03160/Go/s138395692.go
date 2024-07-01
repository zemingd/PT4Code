package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func totalPoints(days int, acts [][]int) int {
	maxIntSlice := func(a []int) int {
		max := a[0]
		for _, n := range a {
			if n > max {
				max = n
			}
		}
		return max
	}
	maxInt := func(a, b int) int {
		if a > b {
			return a
		}
		return b
	}
	if days == 1 {
		return maxIntSlice(acts[0])
	}

	points := make([][]int, days)
	points[0] = acts[0]
	points[1] = []int{
		maxInt(acts[0][0] + acts[1][1], acts[0][0] + acts[1][2]),
		maxInt(acts[0][1] + acts[1][0], acts[0][1] + acts[1][2]),
		maxInt(acts[0][2] + acts[1][0], acts[0][2] + acts[1][1]),
	}
	if days == 2 {
		return maxIntSlice(points[1])
	}
	for j := 1; j < days; j++ {
		points[j] = []int{
			maxInt(points[j - 1][1], points[j - 1][2]) + acts[j][0],
			maxInt(points[j - 1][0], points[j - 1][2]) + acts[j][1],
			maxInt(points[j - 1][0], points[j - 1][1]) + acts[j][2],
		}
	}
	return maxIntSlice(points[days-1])
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
	days := ScanInt()
	activities := make([][]int, days)
	for i := 0; i < days; i++ {
		activities[i] = ScanIntArray(3)
	}
	//days := 3
	//activities := [][]int{
	//	{10, 40, 70},
	//	{20, 50, 80},
	//	{30, 60, 90},
	//}
	fmt.Println(totalPoints(days, activities))
}
