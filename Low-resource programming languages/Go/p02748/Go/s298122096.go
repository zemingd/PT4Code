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
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	a, b, m := scanInt(), scanInt(), scanInt()
	as, bs := make([]int, a), make([]int, b)
	minA, minB := math.MaxInt32, math.MaxInt32
	for i := range as {
		as[i] = scanInt()
		minA = min(minA, as[i])
	}
	for i := range bs {
		bs[i] = scanInt()
		minB = min(minB, bs[i])
	}

	ans := minA + minB
	for i := 0; i < m; i++ {
		x, y, c := scanInt(), scanInt(), scanInt()
		ans = min(ans, as[x-1]+bs[y-1]-c)
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
