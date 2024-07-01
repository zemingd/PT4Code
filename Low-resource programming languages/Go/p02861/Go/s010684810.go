package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	xs, ys []float64
	kaijou int
)

func solve() {
	n := getInt()
	kaijou = 1
	for i := 1; i <= n; i++ {
		kaijou *= i
	}
	xs, ys = make([]float64, n), make([]float64, n)
	for i := 0; i < n; i++ {
		xs[i] = getFloat()
		ys[i] = getFloat()
	}

	ans := 0.0
	for i := 0; i < n; i++ {
		bit := 1 << i
		ans += rec(n, i, bit)
	}
	ans /= float64(kaijou)
	fmt.Fprintln(wr, ans)
}

func rec(n, prev, bit int) float64 {
	if bit == (1<<n)-1 {
		return 0
	}

	ret := 0.0
	for next := 0; next < n; next++ {
		if bit&(1<<next) > 0 {
			continue
		}

		newBit := bit + (1 << next)
		ret += rec(n, next, newBit) + distance(prev, next)
	}

	return ret
}

func distance(i, j int) float64 {
	a := math.Pow(math.Abs(xs[i]-xs[j]), 2)
	b := math.Pow(math.Abs(ys[i]-ys[j]), 2)
	return math.Sqrt(a + b)
}

// -----------------------------------------

const (
	inf = 1 << 60
	// mod = 1000000007
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func main() {
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

func getInt() (ret int) {
	sc.Scan()
	ret, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return
}

func getIntSlice(n int) (ret []int) {
	ret = make([]int, n)
	for i := range ret {
		ret[i] = getInt()
	}
	return
}

func getString() (ret string) {
	sc.Scan()
	ret = sc.Text()
	return
}

func getRunes() (ret []rune) {
	ret = []rune(getString())
	return
}

func getFloat() float64 {
	f, err := strconv.ParseFloat(getString(), 64)
	if err != nil {
		panic(err)
	}
	return f
}
