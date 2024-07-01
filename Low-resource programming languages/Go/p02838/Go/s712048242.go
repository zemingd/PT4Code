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
	a := scanInts(n)

	ans := 0

	for i := 0; i < 60; i++ {
		c0, c1 := 0, 0
		for _, e := range a {
			if e >> uint(i) & 1 == 0 {
				c0++
			} else {
				c1++
			}
		}
		ans = (ans+((c0*c1%mod)*((1 << uint(i))%mod)%mod))%mod
	}

	fmt.Println(ans)
}

const mod = 1000000007
