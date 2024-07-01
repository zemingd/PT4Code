package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextFloat64() float64 {
	sc.Scan()
	f, _ := strconv.ParseFloat(sc.Text(), 64)
	return f
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func expectedValue(x float64) float64 {
	var e float64
	for i := 1; i <= int(x); i++ {
		e += float64(i) / x
	}
	return e
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()
	evs := make([]float64, n)
	for i := 0; i < n; i++ {
		p := nextFloat64()
		evs[i] = expectedValue(p)
	}

	// initialize
	var ev float64
	for i := 0; i < k; i++ {
		ev += evs[i]
	}

	maxEv := ev
	left := 0
	for i := k; i < n; i++ {
		ev = ev - evs[left] + evs[i]
		left++
		if ev > maxEv {
			maxEv = ev
		}
	}
	fmt.Printf("%0.7f\n", maxEv)
}
