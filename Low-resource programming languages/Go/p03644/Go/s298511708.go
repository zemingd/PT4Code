package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanLines)
	var N int
	if scanner.Scan() {
		str := scanner.Text()
		N, _ = strconv.Atoi(str)
	}
	s := fmt.Sprintf("%b", N)
	//fmt.Printf("%b\n", N)
	ans := len(s) - 1
	p := math.Pow(2, float64(ans))
	fmt.Fprintln(wtr, int(p))
	_ = wtr.Flush()
}

func max(a int, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func min(a int, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
