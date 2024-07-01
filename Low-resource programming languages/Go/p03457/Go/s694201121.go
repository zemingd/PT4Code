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

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	t, x, y := make([]int, N+1), make([]float64, N+1), make([]float64, N+1)
	for i := 0; i < N; i++ {
		t[i+1], x[i+1], y[i+1] = scanInt(), scanFloat(), scanFloat()
	}

	for i := 0; i < N; i++ {
		dt := t[i+1] - t[i]
		dist := math.Abs(x[i+1]-x[i]) + math.Abs(y[i+1]-y[i])
		if dt < int(dist) || dt%2 != int(dist)%2 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
