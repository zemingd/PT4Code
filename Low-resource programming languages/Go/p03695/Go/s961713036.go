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
	colorSelected := make([]bool, 8)
	var hackerCnt int
	for _, a := range as {
		colorType := a / 400
		if colorType < 8 {
			colorSelected[colorType] = true
		} else {
			hackerCnt++
		}
	}
	var colorCnt int
	for _, isSelect := range colorSelected {
		if isSelect {
			colorCnt++
		}
	}
	minCnt := colorCnt
	if colorCnt == 0 && hackerCnt > 0 {
		minCnt = 1
	}
	fmt.Printf("%d %d\n", minCnt, colorCnt+hackerCnt)
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
