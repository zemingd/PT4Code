
package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var (
	// ReadString returns a WORD string.
	ReadString func() string
)

func init() {
	ReadString = newReadString(os.Stdin, bufio.ScanWords)
}

func newReadString(ior io.Reader, sf bufio.SplitFunc) func() string {
	r := bufio.NewScanner(ior)
	r.Buffer(make([]byte, 1024), int(1e+9)) // for Codeforces
	r.Split(sf)

	return func() string {
		if !r.Scan() {
			panic("Scan failed")
		}
		return r.Text()
	}
}

func readInt() int {
	n, _ := strconv.Atoi(ReadString())
	return n
}

// 10 11 12 => [10, 11, 12]
func readIntSlice(size int) []int {
	a := make([]int, size)
	for i := 0; i < size; i++ {
		a[i] = readInt()
	}
	return a
}

func get2byte(size int) [][]byte {
	a := make([][]byte, size)
	for i := 0; i < size; i++ {
		var low string
		fmt.Scan(&low)
		a[i] = []byte(low)
	}
	return a
}

func transpose(a [][]int) {
	n := len(a)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			a[i][j], a[j][i] = a[j][i], a[i][j]
		}
	}
}

func fact(n, m int) int {
	res := 1
	for i := m + 1; i <= n; i++ {
		res *= i
	}
	return res
}

func perm(n, r int) int {
	if r > n {
		return 0
	}
	return fact(n, n-r)
}

func comb(n, m int) int {
	if m > n {
		return 0
	}
	return fact(n, n-m) / fact(m, 0)
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func min(integers ...int) int {
	m := integers[0]
	for i, integer := range integers {
		if i == 0 {
			continue
		}
		if m > integer {
			m = integer
		}
	}
	return m
}

func max(integers ...int) int {
	m := integers[0]
	for i, integer := range integers {
		if i == 0 {
			continue
		}
		if m < integer {
			m = integer
		}
	}
	return m
}
func sum(integers ...int) int {
	var res int
	for _, integer := range integers {
		res += integer
	}
	return res
}
func cumulativeSum(as []int) []int {
	cs := make([]int, len(as)+1)
	for i, a := range as {
		cs[i+1] = cs[i] + a
	}
	return cs
}

func main() {
	n, k := readInt(), readInt()
	ps := readIntSlice(n)
	cs := readIntSlice(n)
	visited := make(map[int]struct{})
	var arrays [][]int
	for i := 0; i < n; i++ {
		if _, ok := visited[i]; ok {
			continue
		}
		var as []int
		visited[i] = struct{}{}
		as = append(as, cs[i])
		j := ps[i] - 1
		for j != i {
			as = append(as, cs[j])
			visited[j] = struct{}{}
			j = ps[j] - 1
		}
		arrays = append(arrays, as)
	}
	max := -10000000000
	for _, as := range arrays {
		tmp := calcMaxScore(as, k)
		if max < tmp {
			max = tmp
		}
	}
	fmt.Println(max)
}

func calcMaxScore(as []int, k int) int {
	n := len(as)
	loopArray := append(as, as[:n-1]...)
	start := 0
	end := 1
	cs := cumulativeSum(loopArray)
	sum := sum(as...)
	var baseScore int
	if sum > 0 {
		var count int
		if k%n == 0 {
			count = k/n - 1
		} else {
			count = k / n
		}
		baseScore = sum * count
	}
	var calcRange int
	if k%n == 0 {
		calcRange = n
	} else {
		calcRange = k % n
	}
	max := -10000000000
	for end < len(loopArray) || (loopArray[start] < 0 && start != end-1) {
		if start != end-1 && loopArray[start] < 0 {
			start++
		}
		sum := cs[end] - cs[start]
		if sum > max {
			max = sum
		}
		if calcRange == 1 {
			start++
			end++
		} else if end-start == calcRange {
			start++
		} else if end < len(loopArray) {
			end++
		}
	}
	return max + baseScore
}
