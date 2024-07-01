package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func main() {
	A := nextInt()
	B := nextInt()
	K := nextInt()
	m := map[int]struct{}{}
	for i := A; i < min(B+1, A+K); i++ {
		m[i] = struct{}{}
	}
	for i := B; i > max(A-1, B-K); i-- {
		m[i] = struct{}{}
	}

	var ns []int
	for n := range m {
		ns = append(ns, n)
	}
	sort.Ints(ns)
	for _, n := range ns {
		fmt.Println(n)
	}
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
