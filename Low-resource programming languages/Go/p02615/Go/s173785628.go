package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
func scanText() string {
	sc.Scan()
	return sc.Text()
}
func scanSlice(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}
func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	Ai := scanSlice(N)

	sort.Ints(Ai)
	fmt.Println(Ai[1:N])

	ans := 0
	for _, v := range Ai[1:N] {
		ans += v
	}
	fmt.Println(ans)
}