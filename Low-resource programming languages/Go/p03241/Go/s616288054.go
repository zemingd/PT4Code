package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	m, _ := strconv.Atoi(stringLineScan())
	x := make([]int, 0)
	for i := 1; float64(i) < math.Pow(float64(m), 0.5); i++ {
		if m%i == 0 {
			x = append(x, i)
			x = append(x, m/i)
		}
	}
	ans := make([]int, 0)
	for _, i := range x {
		if m/i >= n {
			ans = append(ans, i)
		}
	}
	fmt.Println(max(ans))
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
