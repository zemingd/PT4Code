package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 10000000
)

var (
	sc = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func main() {
	x, n := nextInt(), nextInt()
	flags := make(map[int]bool)
	for i := 0; i < n; i++ {
		p := nextInt()
		flags[p] = true
	}

	dist := 0
	for {
		if !flags[x-dist] {
			fmt.Println(x - dist)
			return
		}
		if !flags[x+dist] {
			fmt.Println(x + dist)
			return
		}
		dist++
	}
	return
}
