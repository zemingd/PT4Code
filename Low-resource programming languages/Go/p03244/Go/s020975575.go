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
	vs := make([]int, n)
	for i := 0; i < n; i++ {
		vs[i] = nextInt()
	}

	first := map[int]int{}
	for i := 0; i < n-1; i += 2 {
		first[vs[i]]++
	}
	maxIndex := -1
	var total int
	for k, v := range first {
		total += v
		if maxIndex == -1 || v > first[maxIndex] {
			maxIndex = k
		}
	}
	total -= first[maxIndex]

	second := map[int]int{}
	for i := 1; i < n; i += 2 {
		second[vs[i]]++
	}
	maxIndexS := -1
	for k, v := range second {
		total += v
		if k != maxIndex && (maxIndexS == -1 || v > second[maxIndexS]) {
			maxIndexS = k
		}
	}
	if maxIndexS == -1 {
		total = n / 2
	} else {
		total -= second[maxIndexS]
	}

	fmt.Println(total)
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
