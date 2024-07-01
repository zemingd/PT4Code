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

func readInt64() int64 {
	n, _ := strconv.ParseInt(ReadString(), 0, 64)
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

func main() {
	N, M, Q := readInt(), readInt(), readInt()
	var A, B, C, D []int
	for i := 0; i < Q; i++ {
		A = append(A, readInt()-1)
		B = append(B, readInt()-1)
		C = append(C, readInt())
		D = append(D, readInt())
	}
	list := make([]int, N)
	for i := 0; i < N; i++ {
		list[i] = 1
	}
	max := 0
	for i := 0; i < 10000; i++ {
		score := solve(Q, list, A, B, C, D)
		if max < score {
			max = score
		}
		if list[0] == M {
			break
		}
		increment(list, N, M)
	}
	fmt.Println(max)
}

func increment(list []int, n, m int) []int {
	l := []int{}
	for i := 0; i < n; i++ {
		if list[n-1-i] == m {
			l = append(l, n-1-i)
			continue
		}
		list[n-1-i]++
		for _, v := range l {
			list[v] = list[n-1-i]
		}
		break
	}
	return list
}

func solve(q int, list, a, b, c, d []int) int {
	sum := 0
	for i := 0; i < q; i++ {
		if list[b[i]]-list[a[i]] == c[i] {
			sum += d[i]
		}
	}
	return sum
}
