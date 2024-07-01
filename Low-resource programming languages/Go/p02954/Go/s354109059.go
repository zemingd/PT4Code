package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	var s string
	fmt.Scan(&s)
	rs := []rune(s)
	n := len(rs)

	children := make([]int, n)

	cntR := 0
	for i := 0; i < n; i++ {
		switch {
		case rs[i] == 'R':
			cntR++
		case rs[i] == 'L':
			children[i] += cntR / 2
			children[i-1] += (cntR + 1) / 2
			cntR = 0
		}
	}

	cntL := 0
	for i := n - 1; i >= 0; i-- {
		switch {
		case rs[i] == 'L':
			cntL++
		case rs[i] == 'R':
			children[i] += cntL / 2
			children[i+1] += (cntL + 1) / 2
			cntL = 0
		}
	}

	for i := 0; i < n-1; i++ {
		fmt.Print(children[i])
		fmt.Print(" ")
	}
	fmt.Println(children[n-1])
}
