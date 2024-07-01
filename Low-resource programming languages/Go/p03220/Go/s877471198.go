package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readStrings() []string {
	return strings.Split(readString(), " ")
}

func readInt() int {
	n, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return n
}

func readInts() []int {
	line := readStrings()
	ints := make([]int, 0)
	for _, s := range line {
		val, err := strconv.Atoi(s)
		if err != nil {
			panic(err)
		}
		ints = append(ints, val)
	}
	return ints
}

func main() {
	// Inputs
	n := readInt()
	ta := readInts()
	t, a := float64(ta[0]), float64(ta[1])
	h := readInts()

	// Solve
	ans := 1
	min := math.Abs(a - (t - float64(h[0])*0.006))
	for i := 1; i < n; i++ {
		diff := math.Abs(a - (t - float64(h[i])*0.006))
		if diff < min {
			min = diff
			ans = i + 1
		}
	}
	fmt.Println(ans)
}