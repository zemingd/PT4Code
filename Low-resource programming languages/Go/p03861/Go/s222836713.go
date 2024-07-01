package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	line := sc.Text()
	numbers := strings.Split(line, " ")
	a, _ := strconv.ParseUint(numbers[0], 10, 64)
	b, _ := strconv.ParseUint(numbers[1], 10, 64)
	x, _ := strconv.ParseUint(numbers[2], 10, 64)
	if x > b {
		fmt.Println(0)
		os.Exit(0)
	}
	if a == b {
		if a%x == 0 {
			fmt.Println(1)
			os.Exit(0)
		}
		fmt.Println(0)
		os.Exit(0)
	}
	if b-a < x {
		fmt.Println(1)
		os.Exit(0)
	}
	// x の倍数で最も小さいa以上の値
	minXMulti := x * uintDivCeil(a, x)
	// x の倍数で最も大きいb以下の値
	maxXMulti := x * uintDivFloor(b, x)
	count := 1 + ((maxXMulti - minXMulti) / x)
	fmt.Println(count)
}

func uintDivCeil(x, y uint64) uint64 {
	q := x / y
	r := x % y
	if r == 0 {
		return q
	}
	return q + 1
}

func uintDivFloor(x, y uint64) uint64 {
	return x / y
}
