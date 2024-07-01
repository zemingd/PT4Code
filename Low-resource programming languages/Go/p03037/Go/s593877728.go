package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	_ = nextInt()
	M := nextInt()
	cards := map[int]map[int]bool{}
	for i := 0; i < M; i++ {
		L, R := nextInt(), nextInt()
		for j := L; j <= R; j++ {
			if cards[j-1] == nil {
				cards[j-1] = map[int]bool{}
			}
			cards[j-1][i] = true
		}
	}

	var cnt int
	for _, card := range cards {
		ok := true
		for i := 0; i < M; i++ {
			if !card[i] {
				ok = false
				break
			}
		}
		if ok {
			cnt++
		}
	}

	fmt.Println(cnt)
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
