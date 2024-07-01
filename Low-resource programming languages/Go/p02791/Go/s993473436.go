package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func isMax(x []int, number int) bool {
	flag := true
	for i := 0; i < len(x); i++ {
		if number > x[i] {
			flag = false
			return flag
		}
	}
	return flag
}

func main() {
	sc.Split(bufio.ScanWords)
	var count int
	n := nextInt()
	// var count int
	var x [1000]int
	for i := 0; i < n; i++ {
		x[i] = nextInt()
	}
	fmt.Println()

	for j := 0; j < n; j++ {
		BaseNumber := x[j]
		if isMax(x[0:j+1], BaseNumber) == true {
			count++
		}
	}
	fmt.Println()
	fmt.Println(count)
}
