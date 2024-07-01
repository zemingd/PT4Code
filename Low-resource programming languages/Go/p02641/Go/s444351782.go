package main

import (
	"bufio"
	"flag"
	"fmt"
	"os"
	"sort"
	"strconv"
	"testing"
)

/*-----------Main-----------*/

func main() {
	x, n := readI(), readI()
	p := readIs(n)
	dis := 100
	ans := 0
	for i := 0; i <= 101; i++ {
		if isThere(p, i) {
			continue
		}
		if abs(i-x) < dis {
			dis = abs(i - x)
			ans = i
		}
	}
	fmt.Println(ans)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func isThere(a []int, b int) bool {
	for _, v := range a {
		if v == b {
			return true
		}
	}
	return false
}

/*-----------Utilities-----------*/

var sc = bufio.NewScanner(os.Stdin)

func init() {
	testing.Init()
	if flag.Parse(); flag.Arg(0) == "debug" {
		debug()
	}
	const maxBuf = 200100
	var buf []byte = make([]byte, maxBuf)
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBuf)
}

func debug() {
	testFile, err := os.Open("./test/sample-1.in")
	if err != nil {
		fmt.Println("Error : There is no testfile.")
		os.Exit(1)
	}
	sc = bufio.NewScanner(testFile)
}

func readS() string {
	sc.Scan()
	return sc.Text()
}

func readSs(a int) []string {
	b := make([]string, a)
	for i := 0; i < a; i++ {
		b[i] = readS()
	}
	return b
}

func readI() int {
	sc.Scan()
	r, _ := strconv.Atoi(sc.Text())
	return r
}

func readIs(a int) []int {
	b := make([]int, a)
	for i := 0; i < a; i++ {
		b[i] = readI()
	}
	return b
}

func readF() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), 64)
	return r
}

func readFs(a int) []float64 {
	b := make([]float64, a)
	for i := 0; i < a; i++ {
		b[i] = readF()
	}
	return b
}

func max(a []int) int {
	l := len(a)
	m := a[0]
	for i := 1; i < l; i++ {
		if a[i] > m {
			m = a[i]
		}
	}
	return m
}

func min(a []int) int {
	l := len(a)
	m := a[0]
	for i := 1; i < l; i++ {
		if a[i] < m {
			m = a[i]
		}
	}
	return m
}

func sortI(a []int) []int {
	sort.Ints(a)
	return a
}

func reverse(a []int) []int {
	l := len(a)
	r := make([]int, l)
	for i := 0; i < l; i++ {
		r[i] = a[l-i-1]
	}
	return r
}

func countI(a []int, b int) int {
	l := len(a)
	var c int
	for i := 0; i < l; i++ {
		if a[i] == b {
			c++
		}
	}
	return c
}
