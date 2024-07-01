package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextFloat() float64 {
	sc.Scan()
	i, _ := strconv.ParseFloat(sc.Text(), 64)
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	x := nextFloat() - nextFloat()
	minDiff := math.Inf(1)
	var ans int

	for i := 0; i < n; i++ {
		if diff := math.Abs(x - 0.006*nextFloat()); diff < minDiff {
			minDiff = diff
			ans = i
		}
	}

	fmt.Println(ans + 1)
}
