package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, _ := strconv.Atoi(input())
	x := make([]float64, n)
	y := make([]float64, n)
	for i := 0; i < n; i++ {
		x[i], _ = strconv.ParseFloat(input(), 64)
		y[i], _ = strconv.ParseFloat(input(), 64)
	}

	ans := 0.0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			dx := x[i] - x[j]
			dy := y[i] - y[j]
			dist := math.Pow(dx*dx+dy*dy, 0.5)
			ans += dist * 2 / float64(n)
		}
	}
	fmt.Println(ans)
}
