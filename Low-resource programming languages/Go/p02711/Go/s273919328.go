//problem_a.go

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	//"sort"
	//"strings"
)

const (
	constMod = int(1e9) + 7
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

// -----------------------------------------

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getIntSlice(n int) []int {
	ns := []int{}
	for i := 0; i < n; i++ {
		ns = append(ns, getInt())
	}
	return ns
}

func getIntDoubleSlice(m int, n int) [][]int {
	var nds [][]int
	for i := 0; i < m; i++ {
		ns := getIntSlice(n)
		nds = append(nds, ns)
	}
	return nds
}

func getFloat() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func getFloatSlice(n int) []float64 {
	fs := []float64{}
	for i := 0; i < n; i++ {
		fs = append(fs, getFloat())
	}
	return fs
}

func getFloatDoubleSlice(m int, n int) [][]float64 {
	var fds [][]float64
	for i := 0; i < m; i++ {
		fs := getFloatSlice(n)
		fds = append(fds, fs)
	}
	return fds
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func getStringSlice(n int) []string {
	ss := []string{}
	for i := 0; i < n; i++ {
		ss = append(ss, getString())
	}
	return ss
}

func getStringDoubleSlice(m int, n int) [][]string {
	sds := [][]string{}
	for i := 0; i < m; i++ {
		ss := getStringSlice(n)
		sds = append(sds, ss)
	}
	return sds
}

// -----------------------------------------

// Num Fanction

func numAbs(x int) int {
	if x < 0 {
		return -x
	}

	return x
}

func numModPow(a int, n int, m int) int {
	result := 1

	for n > 0 {
		if n%2 == 1 {
			result = (result * a) % m
		}
		a = (a * a) % m
		n >>= 1
	}

	return result
}

func numGcd(a int, b int) int {
	if b == 0 {
		return a
	}

	return numGcd(b, a%b)
}

func numLcm(a int, b int) int {
	return a * b / numGcd(a, b)
}

func numModInv(a int, p int) int {
	if a == 1 {
		return 1
	}

	return p - numModInv(p%a, p)*(p/a)%p
}

func numModFrac(n int) []int {
	frac := []int{1}

	for i := 1; i <= n; i++ {
		frac = append(frac, i*frac[i-1]%constMod)
	}

	return frac
}

func numModConb(n int, r int) int {
	frac := numModFrac(n)

	return (frac[n] / ((frac[n-r] * frac[r]) % constMod)) % constMod
}

// -----------------------------------------

// sort
// sort.SliceStable(SLICENAME, func(i, j int) bool { return SLICENAME[i] < SLICENAME[j] })

// reverse sort
// sort.SliceStable(SLICENAME, func(i, j int) bool { return SLICENAME[i] > SLICENAME[j] })

// -----------------------------------------

func solve() {

	n := getInt()

	if n%1000 == 7 || n%100 == 7 || n%10 == 7 {
		fmt.Fprintln(wr, "Yes")
	} else {
		fmt.Fprintln(wr, "No")
	}

}

// -----------------------------------------

func main() {
	maxBufSize := int(1e8)
	sc.Buffer(make([]byte, 4096), maxBufSize)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}
