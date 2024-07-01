package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	k := scanInt(sc)

	trees := make([]int, n)
	for i := 0; i < n; i++ {
		trees[i] = scanInt(sc)
	}

	sort.Ints(trees)

	min := math.MaxInt32
	for i := 0; i <= n-k; i++ {
		diff := trees[i+k-1] - trees[i]
		if diff < min {
			min = diff
		}
	}

	fmt.Println(min)
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}
