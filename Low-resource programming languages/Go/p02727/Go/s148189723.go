package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	X := readInt()
	Y := readInt()
	A := readInt()
	B := readInt()
	C := readInt()

	p := make([]int, A+1)
	q := make([]int, B+1)
	r := make([]int, C+1)

	for i := 0; i < A; i++ {
		p[i+1] = readInt()
	}
	for i := 0; i < B; i++ {
		q[i+1] = readInt()
	}
	for i := 0; i < C; i++ {
		r[i+1] = readInt()
	}

	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))

	for i := 0; i < A-1; i++ {
		p[i+1] += p[i]
	}
	for i := 0; i < B-1; i++ {
		q[i+1] += q[i]
	}
	for i := 0; i < C-1; i++ {
		r[i+1] += r[i]
	}

  result := 0
	for i := max(0, X-C); i <= X; i++ {
		ok := max(0, Y-(C-(X-i)))
		ng := Y + 1
		for ng-ok != 1 {
			m := ok + (ng-ok)/2

			t0 := 0
			t1 := 0
			if m == Y {
				t1 = 1
			} else {
				if m != 0 {
					t0 += q[m-1]
				}
				k := (X - i) + (Y - m)
				if k != 0 {
					t0 += r[k-1]
				}
				t1 += q[m]
				k = (X - i) + (Y - m)
				if k != 0 {
					t1 += r[k-1]
				}
			}
			if t0 <= t1 {
				ok = m
			} else {
				ng = m
			}
		}

		t := 0
		if i != 0 {
			t += p[i-1]
		}
		if ok != 0 {
			t += q[ok-1]
		}
		k := (X - i) + (Y - ok)
		if k != 0 {
			t += r[k-1]
		}
		result = max(result, t)
	}

	fmt.Println(result)
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}
