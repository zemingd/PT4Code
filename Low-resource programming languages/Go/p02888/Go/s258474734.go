package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"sort"
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
	l := scanInts(n)

	sort.Ints(l)

	ans := 0

	for i := 0; i < n; i++ {
		for j := i+1; j < n; j++ {
			bars := l[i]+l[j]
			c := bs(bars, l[j+1:])
			// fmt.Println(c,l[j+1:],len(l[j+1:]))

			ans += c+1
		}
	}
	fmt.Println(ans)
}

func bs(a int, arr []int) int {
	l,r := -1, len(arr)
	c := (r+l)/2
	for r-l > 1 {
		if a > arr[c] {
			l = c
		} else {
			r = c
		}
		c = (r+l)/2
	}

	return l

}
