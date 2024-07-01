package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	as := make([]int, N)
	for i := 0; i < N; i++ {
		as[i] = nextInt()
	}

	var sum int
	for i := 0; i < N-1; i++ {
		if as[i] < 0 {
			if as[i+1] < 0 || abs(as[i]) >= abs(as[i+1]) {
				as[i] *= -1
				as[i+1] *= -1
			}
		} else if as[i+1] < 0 && abs(as[i+1]) > abs(as[i]) {
			as[i] *= -1
			as[i+1] *= -1
		}

		if i == N-2 && as[i+1] < 0 && abs(as[i+1]) > abs(as[i]) {
			as[i] *= -1
			as[i+1] *= -1
		}

		sum += as[i]
	}

	fmt.Println(sum + as[N-1])
}

// Input. ----------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}

	return i
}

func nextFloat() float64 {
	sc.Scan()
	f64, err := strconv.ParseFloat(sc.Text(), 64)
	if err != nil {
		panic(err)
	}

	return f64
}

func nextString() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}

	return sc.Text()
}

// ---------- Input.

// Util. ----------

func abs(x int) int {
	return int(math.Abs(float64(x)))
}

func min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

// ---------- Util.
