package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, _ := strconv.Atoi(read())
	return i
}

func max(x, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}

func min(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

func abs(x, y int) int {
	if x-y > 0 {
		return x - y
	} else {
		return -(x - y)
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()
	aList := make([]int, 0)
	aList = append(aList, 0)
	absSum := 0
	for i := 0; i <= n; i++ {
		aList = append(aList, readInt())
		absSum += abs(aList[i+1], aList[i])
	}
	aList = append(aList, 0)
	for i := 1; i <= n; i++ {
		fmt.Println(absSum - abs(aList[i], aList[i-1]) - abs(aList[i+1], aList[i]) + abs(aList[i-1], aList[i+1]))
	}
}
