package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func parseFloat64(s string) (n float64) {
	n, _ = strconv.ParseFloat(s, 64)
	return n
}

func sum(ary []float64) (t float64) {
	for _, v := range ary {
		t += v
	}
	return
}
func main() {
	var n int
	var x float64
	fmt.Scan(&n)
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	w := make([]float64, n)
	for i := range w {
		s.Scan()
		w[i] = parseFloat64(s.Text())
	}
	mid := sum(w) / 2

	for i := 0; i < n; i++ {
		x += w[i]
		if x >= mid {
			if math.Abs(x-mid) > math.Abs(x-w[i]-mid) {
				x = x - w[i] - mid
				fmt.Println(2 * math.Abs(x-mid))
				break
			} else {
				fmt.Println(2 * math.Abs(x-mid))
				break
			}
		}
	}
}
