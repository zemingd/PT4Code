package main

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := NewScanner(os.Stdin)
	n, _ := sc.NextInt()
	m, _ := sc.NextInt()
	x, _ := sc.NextInt()
	c, a := []int{}, [][]int{}
	for i := 0; i < n; i++ {
		ci, _ := sc.NextInt()
		c = append(c, ci)
		ai, _ := sc.NextInts(m)
		a = append(a, ai)
	}
	ans := solve(n, m, x, c, a)
	fmt.Println(ans)
}

func solve(n, m, x int, c []int, a [][]int) (minCost int) {
	// i: combination
	// j: book
	// k: algorithm
	minCost = math.MaxInt64
	for i, maxIter := 0, 1<<n; i < maxIter; i++ {
		progress := make([]int, m)
		cost := 0
		for j := 0; j < n; j++ {
			if i>>j&1 == 1 {
				for k := 0; k < m; k++ {
					progress[k] += a[j][k]
				}
				cost += c[j]
			}
		}
		if !isOk(x, progress) {
			continue
		}
		if cost < minCost {
			minCost = cost
		}
	}
	if minCost == math.MaxInt64 {
		return -1
	}
	return minCost
}

func isOk(x int, progress []int) bool {
	for _, v := range progress {
		if v < x {
			return false
		}
	}
	return true
}

// Scanner is a wrapper of bufio.Scanner which is customized for competitive programing.
type Scanner struct {
	bufio.Scanner
}

// NewScanner is a constructor for Scanner.
func NewScanner(r io.Reader) *Scanner {
	sc := Scanner{*bufio.NewScanner(r)}
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
	return &sc
}

// NextInt reads a integer from io stream.
func (sc *Scanner) NextInt() (int, error) {
	if !sc.Scan() {
		return -1, errors.New("failed to scan")
	}
	return strconv.Atoi(sc.Text())
}

// NextInts reads n integers from io stream.
func (sc *Scanner) NextInts(n int) (arr []int, e error) {
	arr = make([]int, n)
	for i := 0; i < n; i++ {
		v, e := sc.NextInt()
		if e != nil {
			return nil, e
		}
		arr[i] = v
	}
	return arr, nil
}
