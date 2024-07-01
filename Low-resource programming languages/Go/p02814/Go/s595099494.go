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

func scanInt64() int64 {
	sc.Scan()
	a,_ := strconv.ParseInt(sc.Text(),10,64)
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

	n,m := scanInt(), scanInt()
	a := scanInts(n)

	val := a[0]/2
	for i := 1; i < n; i++ {
		e := euclidean(val,a[i]/2)
		val = val*(a[i]/2)/e
	}

	val2 := a[0]
	for i := 1; i < n; i++ {
		e := euclidean(val2,a[i])
		val2 = val2*a[i]/e
	}

	fmt.Println(m/val-m/val2)
}

func euclidean(a,b int) int {
	r, x := a%b, b
	for r != 0 {
		x, r = r, x%r
	}
	return x
}
