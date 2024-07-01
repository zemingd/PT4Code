package main

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := NewScanner(os.Stdin)
	n, _ := sc.NextInt()
	k, _ := sc.NextInt()
	a, _ := sc.NextInts(n)
	ans := solve(n, k, a)
	fmt.Println(strings.Join(Ints2Strs(ans), " "))
}

func solve(n, k int, a []int) (ans []int) {
	for i := 0; i < k; i++ {
		a2 := operate(a)
		if sliceEquals(a, a2) {
			break
		}
		a = a2
	}
	return a
}

func operate(a []int) []int {
	n := len(a)
	b := make([]int, n+1)
	for i, ai := range a {
		left, right := Max(0, i-ai), Min(i+ai+1, n)
		b[left]++
		b[right]--
	}
	a2 := make([]int, n)
	a2[0] = b[0]
	for i := 1; i < n; i++ {
		a2[i] = a2[i-1] + b[i]
	}
	return a2
}

func sliceEquals(a, b []int) bool {
	for i := range a {
		if a[i] != b[i] {
			return false
		}
	}
	return true
}

// Ints2Strs converts int slice to string slice
func Ints2Strs(slice []int) []string {
	strs := []string{}
	for _, v := range slice {
		strs = append(strs, strconv.Itoa(v))
	}
	return strs
}

// Max returns max value of inputs
func Max(a ...int) (max int) {
	for i, ai := range a {
		if i == 0 || ai > max {
			max = ai
		}
	}
	return max
}

// Min returns minimum value of inputs
func Min(a ...int) (min int) {
	for i, ai := range a {
		if i == 0 || ai < min {
			min = ai
		}
	}
	return min
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
