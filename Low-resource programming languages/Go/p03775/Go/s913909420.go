package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

// scanner
var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

// math utils
func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(a, b int) int {
	return int(math.Pow(float64(a), float64(b)))
}

func squrt(b int) int {
	return int(math.Sqrt(float64(b)))
}

func max(a, b int) int {
	return int(math.Max(float64(a), float64(b)))
}

func min(a, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

func largerNumOfDigit(a, b int) int {
	alen, blen := len(strconv.Itoa(a)), len(strconv.Itoa(b))
	if alen > blen {
		return alen
	}
	return blen
}

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	min := math.MaxInt64

	for a := 1; a <= squrt(N); a++ {
		if N%a != 0 {
			continue
		}
		b := N / a
		if largerNumOfDigit(a, b) < min {
			min = largerNumOfDigit(a, b)
		}
	}

	fmt.Print(min)
}
