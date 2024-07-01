package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var n int
	var t, a float64
	fmt.Scan(&n)
	fmt.Scan(&t, &a)
	h := make([]float64, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		sc.Scan()
		h[i], _ = strconv.ParseFloat(sc.Text(), 64)
	}
	index := -1
	dif := math.MaxFloat64
	for i := 0; i < n; i++ {
		d := math.Abs(a - (t - h[i]*0.006))
		if dif > d {
			dif = d
			index = i
		}
	}
	fmt.Println(index + 1)
}
