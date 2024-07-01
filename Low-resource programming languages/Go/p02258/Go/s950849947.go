package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	n := stdin(sc)
	R := make([]int, n)
	for i := 0; i < n; i++ {
		R[i] = stdin(sc)
	}

	min_v := R[0]
	max_v := math.MinInt32
	for i := 1; i < n; i++ {
		diff := R[i] - min_v
		if diff > max_v {
			max_v = diff
		}
		if R[i] < min_v {
			min_v = R[i]
		}
	}
	fmt.Println(max_v)
}

func stdin(sc *bufio.Scanner) int {
	sc.Scan()
	num, _ := strconv.Atoi(sc.Text())
	return num
}

