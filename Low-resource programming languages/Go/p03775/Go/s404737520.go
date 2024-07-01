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

	min := int(math.Pow10(10))
	digit := 0
	for i := 2; i < N; i++ {
		if N%i == 0 {
			v := N / i
			num := max(v, i)
			if num < min {
				min = num
				digit = len(fmt.Sprint(num))
			}
		}
	}

	if digit == 0 {
		fmt.Println(len(fmt.Sprint(N)))
		return
	}

	fmt.Println(digit)
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
	if x < y {
		return x
	}

	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}

	return y
}

// ---------- Util.
