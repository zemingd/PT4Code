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
	var bs []int
	for _, a := range as {
		bs = append(bs, a)
		for left, right := 0, len(bs)-1; left < right; left, right = left+1, right-1 {
			bs[left], bs[right] = bs[right], bs[left]
		}
	}
	for _, b := range bs {
		fmt.Printf("%d ", b)
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
