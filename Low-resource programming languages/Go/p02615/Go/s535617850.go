package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	n := scanInt()
	sum := 0
	mn := math.MaxInt64
	for i := 0; i < n; i++ {
		a := scanInt()
		sum += a
		mn = min(mn, a)
	}
	fmt.Println(sum - mn)
}
