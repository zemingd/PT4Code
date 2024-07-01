package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	n := readInt()

	scanner := newMyScanner()
	vec := scanner.readIntLine(n)

	// copy
	cpVec := make([]int, len(vec))
	copy(cpVec, vec)
	sort.Ints(cpVec)

	left := cpVec[n/2-1]
	right := cpVec[n/2]

	for _, v := range vec {
		if v <= left {
			fmt.Println(right)
		} else if v >= right {
			fmt.Println(left)
		} else {
			fmt.Println("ERR")
		}
	}
}

type MyScanner struct {
	sc *bufio.Scanner
}

func newMyScanner() *MyScanner {
	ms := new(MyScanner)
	ms.sc = bufio.NewScanner(os.Stdin)
	return ms
}

func (ms *MyScanner) readIntLine(n int) []int {
	ms.sc.Split(bufio.ScanWords)

	ret := make([]int, 0)

	for i := 0; i < n; i++ {
		ms.sc.Scan()
		v, err := strconv.Atoi(ms.sc.Text())
		if err != nil {
			panic(err)
		}
		ret = append(ret, v)
	}

	return ret
}

func (ms *MyScanner) readInt64Line(n int) []int64 {
	ms.sc.Split(bufio.ScanWords)

	ret := make([]int64, 0)

	for i := 0; i < n; i++ {
		ms.sc.Scan()
		v, err := strconv.ParseInt(ms.sc.Text(), 10, 64)
		if err != nil {
			panic(err)
		}
		ret = append(ret, v)
	}

	return ret
}

func (ms *MyScanner) readInt() int {
	var a int
	fmt.Scan(&a)
	return a
}

func (ms *MyScanner) readInt64() int64 {
	var a int64
	fmt.Scan(&a)
	return a
}

func readInt() int {
	var a int
	fmt.Scan(&a)
	return a
}

func readIntLine(n int) []int {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	ret := make([]int, 0)

	for i := 0; i < n; i++ {
		sc.Scan()
		v, e := strconv.Atoi(sc.Text())
		if e != nil {
			panic(e)
		}
		ret = append(ret, v)
	}

	return ret
}
