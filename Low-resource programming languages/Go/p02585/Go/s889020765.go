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
func sum(integers ...int) int64 {
	var res int64
	for _, integer := range integers {
		res += int64(integer)
	}
	return res
}
func cumulativeSum(as []int) []int64 {
	cs := make([]int64, len(as)+1)
	for i, a := range as {
		cs[i+1] = cs[i] + int64(a)
	}
	return cs
}

func main() {
	n, k := readInt(), readInt()
	ps := readIntSlice(n)
	cs := readIntSlice(n)

	fmt.Println(solve(n, k, ps, cs))
}

func naiveSolve(n, k int, ps, cs []int) int64 {
	var max int64 = -10000000000
	for i := 0; i < n; i++ {
		var sum int64
		j := ps[i] - 1
		var counter int

		for counter < k {
			sum += int64(cs[j])
			if max < sum {
				max = sum
			}
			j = ps[j] - 1
			counter++
		}
	}
	return max
}

func solve2(n, k int, ps, cs []int) int64 {
	var res int64 = -100000000000
	for i := 0; i < n; i++ {
		circleSum := cs[i]
		circleLength := 1
		j := ps[i] - 1
		for j != i {
			circleLength++
			circleSum += cs[j]
			j = ps[j] - 1
		}
		var cnt int
		var path int64
		j = i
		if circleSum < 0 {
			circleSum = 0
		}
		for {
			cnt++
			if cnt > k {
				break
			}
			path += int64(cs[j])
			circleCount := (k - cnt) / circleLength
			score := path + int64(circleCount*circleSum)
			if res < score {
				res = score
			}
			j = ps[j] - 1
			if j == i {
				break
			}
		}
	}
	return res
}

func solve(n, k int, ps, cs []int) int64 {
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
	var max int64
	max = -10000000000
	for _, as := range arrays {
		tmp := calcMaxScore(as, k)
		if max < tmp {
			max = tmp
		}
	}
	return max
}

func calcMaxScore(as []int, k int) int64 {
	n := len(as)
	loopArray := append(as, as...)
	loopArray = append(loopArray, as...)
	start := 0
	end := 1
	cs := cumulativeSum(loopArray)
	sum := sum(as...)
	var baseScore int64
	var calcRange int
	if k >= n {
		if sum > 0 {
			count := k/n - 1
			baseScore = sum * int64(count)
		}
		if k%n == 0 {
			calcRange = n
		} else {
			calcRange = k%n + n
		}
	} else {
		calcRange = k
	}

	var max int64
	max = -10000000000
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
