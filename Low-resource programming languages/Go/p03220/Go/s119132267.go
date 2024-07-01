package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func abs(x float64) float64 {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n, t, a int
	fmt.Scan(&n, &t, &a)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	var x float64
	min := 100000000.0
	index := 0
	for i := 0; i < n; i++ {
		sc.Scan()
		x, _ = strconv.ParseFloat(sc.Text(), 64)
		if v := abs(float64(t) - x*0.006 - float64(a)); v < min {
			min = v
			index = i + 1
		}
	}
	fmt.Println(index)
}
