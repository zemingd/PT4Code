package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	n := nextInt()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		as[i] = nextInt()
	}
	var evens, odds []int
	var isEvenNum bool
	for _, a := range as {
		if isEvenNum {
			evens = append(evens, a)
			isEvenNum = false
		} else {
			odds = append(odds, a)
			isEvenNum = true
		}
	}
	if len(as)%2 == 0 {
		for i := len(evens) - 1; i >= 0; i-- {
			fmt.Printf("%d ", evens[i])
		}
		for _, odd := range odds {
			fmt.Printf("%d ", odd)
		}
	} else {
		for i := len(odds) - 1; i >= 0; i-- {
			fmt.Printf("%d ", odds[i])
		}
		for _, even := range evens {
			fmt.Printf("%d ", even)
		}
	}
	fmt.Println()
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

func nextString() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}

	return sc.Text()
}

// ---------- Input.

// Util. ----------

func min(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func max(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

// ---------- Util.
