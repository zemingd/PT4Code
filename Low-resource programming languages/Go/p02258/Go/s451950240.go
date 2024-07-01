package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	min := math.MaxInt64
	profit := math.MinInt64

	var val int
	fmt.Scan(&val)
	min = val

	scanner := bufio.NewScanner(os.Stdin)

	for i := 1; i < n; i++ {
		scanner.Scan()
		val, _ = strconv.Atoi(scanner.Text())

		if profit < val-min {
			profit = val - min
		}

		if val < min {
			min = val
		}
	}

	fmt.Println(profit)
}

