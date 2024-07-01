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

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func main() {
	A := nextInt()
	B := nextInt()
	M := nextInt()
	AS := make([]int, A)
	BS := make([]int, B)
	minA := 1000000
	minB := 1000000
	for i := 0; i < A; i++ {
		n := nextInt()
		AS[i] = n
		minA = min(minA, n)
	}
	for i := 0; i < B; i++ {
		n := nextInt()
		BS[i] = n
		minB = min(minB, n)
	}
	ANS := minA + minB
	for i := 0; i < M; i++ {
		x := nextInt()
		y := nextInt()
		c := nextInt()
		ANS = min(ANS, AS[x-1]+BS[y-1]-c)
	}
	fmt.Println(ANS)
}
