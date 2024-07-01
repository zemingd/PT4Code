package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
}

func ScanInt() int {
	scanner.Scan()
	t := scanner.Text()
	n, _ := strconv.Atoi(t)
	return n
}

func main() {
	n := ScanInt()
	k := ScanInt()
	hs := make([]int, n)
	for i := 0; i < n; i++ {
		hs[i] = ScanInt()
	}
	sort.Ints(hs)

	min := math.MaxInt32
	for i := 0; i <= n-k; i++ {
		if v := hs[i+k-1] - hs[i]; v < min {
			min = v
		}
	}
	fmt.Println(min)
}
