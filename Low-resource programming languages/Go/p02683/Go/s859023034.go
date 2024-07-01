package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

/*-----------Main-----------*/

func main() {
	n, m, x := readI(), readI(), readI()
	c := make([]int, n)
	a := make([][]int, n)

	for i := 0; i < n; i++ {
		c[i] = readI()
		a[i] = make([]int, m)
		a[i] = readIs(m)
	}

	bmax := pow(2, n) - 1
	ans := -1

	for bits := 0; bits <= bmax; bits++ {
		foo := make([]int, m+1)
		for book := 0; book < n; book++ {
			if bit(bits, book) {
				foo[0] += c[book]
				for i := 1; i <= m; i++ {
					foo[i] += a[book][i-1]
				}
			}
		}
		good := true
		for i := 1; i <= m; i++ {
			if foo[i] < x {
				good = false
				break
			}
		}
		if good {
			if ans == -1 {
				ans = foo[0]
			} else {
				if foo[0] < ans {
					ans = foo[0]
				}
			}
		}
	}
	fmt.Println(ans)
}

func pow(a, b int) int {
	c := 1
	for i := 0; i < b; i++ {
		c *= a
	}
	return c
}

func bit(bits, i int) bool {
	return (bits>>uint64(i))&1 == 1
}

/*-----------Utilities-----------*/

var sc = bufio.NewScanner(os.Stdin)

func init() {
	if len(os.Args) >= 2 {
		if os.Args[1] == "debug" {
			debug()
		}
	}
	const maxBuf = 200100
	var buf []byte = make([]byte, maxBuf)
	sc.Split(bufio.ScanWords)
	sc.Buffer(buf, maxBuf)
}

func debug() {
	testFile, err := os.Open("./test/sample-3.in")
	if err != nil {
		fmt.Fprintln(os.Stderr, "Error : There is no testfile.")
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
