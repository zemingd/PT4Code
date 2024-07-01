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
	k, _ := sc.NextInt()
	a, _ := sc.NextInts(n)
	ans := solve(n, k, a)
	fmt.Println(ans)
}

func solve(n, k int, a []int) (ans int) {
	history := make([]int, n)
	for i := range history {
		history[i] = -1
	}
	current := 1
	history[current-1] = k
	for k > 0 {
		current = a[current-1]
		k--
		if history[current-1] != -1 {
			periodicTime := k - history[current-1]
			k %= periodicTime
		}
		history[current-1] = k
	}
	return current
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
