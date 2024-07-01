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

func scanFloat64() float64 {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return float64(a)
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

//•*¨*•.¸¸♪func•*¨*•.¸¸♪
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

//•*¨*•.¸¸♪main•*¨*•.¸¸♪

func main() {
	sc.Split(bufio.ScanWords)
	// sc.Buffer(make([]byte, 10000), 100000000)

	a := scanInt()
	b := scanInt()

	if a<b {
		for i := 0; i < b; i++ {
			fmt.Print(a)
		}
	} else {
		for i := 0; i < a; i++ {
			fmt.Print(b)
		}
	}

	fmt.Println()
}
