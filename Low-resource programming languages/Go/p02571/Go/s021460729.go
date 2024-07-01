package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func scanInts(n int) []int {
	is := make([]int, n)
	for i := 0; i < n; i++ {
		is[i] = nextInt()
	}
	return is
}

func main() {
	var S, T string
	fmt.Scan(&S)
	fmt.Scan(&T)
	sLen := len(S)
	tLen := len(T)
	if tLen == 0 {
		fmt.Println(sLen)
		return
	}
	nearI := 0
	MAX := 0
	for i := 0; i <= len(S)-tLen; i++ {
		d := sameCount(S[i:i+tLen], T)
		MAX = max(d, MAX)
		if MAX == d {
			nearI = i
		}
	}
	fmt.Println(diffCount(S[nearI:nearI+tLen], T))
}

func sameCount(a, b string) int {
	var count int
	for i := 1; i <= len(a); i++ {
		if a[i-1:i] == b[i-1:i] {
			count++
		}
	}
	return count
}

func diffCount(a, b string) int {
	var count int
	for i := 1; i <= len(a); i++ {
		if a[i-1:i] != b[i-1:i] {
			count++
		}
	}
	return count
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
