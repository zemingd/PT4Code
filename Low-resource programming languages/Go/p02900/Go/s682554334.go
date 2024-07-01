package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readfloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	a, b := readInt(), readInt()

	c := max(a, b)
	sqrt := math.Sqrt(float64(c))

	count := 0
	for i := 1; i <= int(sqrt); i++ {
		if a%i == 0 && b%i == 0 && isPrime(i) {
			count++
		}
	}
	fmt.Println(count)
}

func isPrime(x int) bool {
	sx := math.Sqrt(float64(x))
	for i := 2; i <= int(sx); i++ {
		if x%i == 0 {
			return false
		}
	}
	return true
}
