package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

//=====I/O=====

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ { res[i] = scanInt() }
	return res
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func printInts(a ...int) {
	for i, e := range a {
		fmt.Fprint(wr, e)
		if i != len(a)-1 { fmt.Fprint(wr, " ") }
	}
	fmt.Fprintln(wr)
	wr.Flush()
}

//=====main=====

func main() {
	sc.Split(bufio.ScanWords)

	n := scanInt()

	c := 1 << uint(n)

	a := make([][]test, n)
	ans := 0

	for i := 0; i < n; i++ {
		in := scanInt()
		for j := 0; j < in; j++ {
			a[i] = append(a[i], test{scanInt()-1, scanInt()})
		}
	}

	for i := 0; i < c; i++ {
		ok := true
		for f := 0; f < n; f++ {
			if i >> uint(f) & 1 == 1 {
				for _, e := range a[f] {
					x, y := e.x, e.y
					if i >> uint(x) & 1 != y {
						ok = false
					}
				}
			}
		}
		if ok {
			count := 0
			for j := 0; j < n; j++ {
				if i >> uint(j) & 1 == 1 {
					count++
				}
			}
			ans = max(ans, count)
		}
	}

	fmt.Println(ans)
}

type test struct {
	x int
	y int
}

func min(a ...int) int {
	res := a[0]
	for i := 1; i < len(a); i++ {
		if res > a[i] { res = a[i] }
	}
	return res
}

func max(a ...int) int {
	res := a[0]
	for i := 1; i < len(a); i++ {
		if res < a[i] { res = a[i] }
	}
	return res
}
