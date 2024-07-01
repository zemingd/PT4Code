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
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}
func scanFloat() float64 {
	sc.Scan()
	a, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		fmt.Println(err)
	}
	return a
}
func scanInt2() (int, int) {
	return scanInt(), scanInt()
}
func scanFloat2() (float64, float64) {
	return scanFloat(), scanFloat()
}
func main() {
	sc.Split(bufio.ScanWords)

	N, D := scanInt2()
	var ans int
	for i := 0; i < N; i++ {
		var xy float64
		X, Y := scanFloat2()
		xy = math.Sqrt(X*X + Y*Y)
		if xy <= float64(D) {
			ans++
		}
	}
	fmt.Println(ans)
}