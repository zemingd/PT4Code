package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readString() string {
	sc.Scan()
	return sc.Text()
}

func readInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readfloat64() float64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return float64(i)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := readInt(), readInt()

	a := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		a[i] = readInt()
	}

	s := make([]int, 0, 2*int(1e5))
	seen := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		seen[i] = -1
	}

	v := 1
	for seen[v] == -1 {
		seen[v] = len(s)
		s = append(s, v)
		v = a[v]
	}
	loop := s[seen[v]:len(s)]

	if k < len(s) {
		fmt.Println(s[k])
	} else {
		r := (k - seen[v]) % (len(loop))
		fmt.Println(loop[r])
	}
}
