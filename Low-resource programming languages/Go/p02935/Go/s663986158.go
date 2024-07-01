package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	N := nextInt()
	V := make(values, N)

	for i := 0; i < N; i++ {
		V[i] = float64(nextInt())
	}

	// vをソートして真ん中から使っていく
	sort.Sort(V)

	var l, r int

	if N%2 == 0 {
		l = N/2 - 1
		r = N / 2
	} else {
		vl := V[N/2] - V[N/2-1]
		vr := V[N/2+1] - V[N/2]
		if vl < vr {
			l = N/2 - 1
			r = N / 2
		} else {
			l = N / 2
			r = N/2 + 1
		}
	}
	v := (V[l] + V[r]) / 2
	V[l] = -1
	V[r] = -1
	l--
	r++
	for l >= 0 || r < N {
		var p byte
		if l < 0 {
			p = 'r'
		} else if r == N {
			p = 'l'
		} else if v < float64(V[l]+V[r])/2 {
			p = 'l'
		} else {
			p = 'r'
		}

		if p == 'r' {
			// 右を使用する
			v = (v + float64(V[r])) / 2
			V[r] = -1
			r++

		} else {
			// 左を使用する
			v = (v + float64(V[l])) / 2
			V[l] = -1
			l--
		}
	}

	fmt.Println(v)
}

type values []float64

func (a values) Len() int           { return len(a) }
func (a values) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a values) Less(i, j int) bool { return a[i] < a[j] }

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}
