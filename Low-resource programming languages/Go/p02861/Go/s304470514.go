package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	BufferSize = 1000
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func square(x int) int {
	return x * x
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	x := make([]int, n)
	y := make([]int, n)
	for i := 0; i < n; i++ {
		x[i] = scanInt(sc)
		y[i] = scanInt(sc)
	}

	// nC2
	tmp := n * (n - 1) / 2
	distance := make([]float64, tmp)

	// i-j間の距離
	tmp = 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			distance[tmp] = math.Sqrt(float64(square(x[i]-x[j]) + square(y[i]-y[j])))
			tmp++
		}
	}

	sum := 0.0
	for i := 0; i < len(distance); i++ {
		sum += distance[i]
	}
	average := sum / float64(len(distance))

	fmt.Println(average * (float64)(n-1))
}
