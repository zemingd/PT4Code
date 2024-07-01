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

func readInts(n int) []int {
	result := make([]int, n)
	for i := 0; i < n; i++ {
		result[i] = nextInt()
	}
	return result
}

func main() {
	N := nextInt()
	X := nextInt()
	T := nextInt()
	var num int
	for N > 0 {
		N -= X
		num++
	}
	fmt.Println(num * T)
}

func move(a, b int) int {
	ret := b
	if a == 0 {
		return 0
	} else if a-b < 0 {
		return a
	}
	return ret
}
