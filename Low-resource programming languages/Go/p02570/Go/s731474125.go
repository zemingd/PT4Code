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
	D, T, S := nextFloat(), nextFloat(), nextFloat()
	if T >= D/S {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
