package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func caclTmp(t, x int) float64 {
	return float64(t) - float64(x)*0.006
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	t := nextInt()
	a := nextInt()

	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}

	point := 0
	min := math.Inf(0)

	for p, h := range slice {
		res := caclTmp(t, h)

		abs := math.Abs(res - float64(a))
		// fmt.Println(abs)
		if abs < min {
			min = abs
			point = p + 1
			// fmt.Printf("point:%d, min:%f", point, min)
		}
	}

	fmt.Println(point)
}
