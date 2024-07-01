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
	b := scanInts(n-1)
	
	ans := b[0]
	pre := b[0]
	for i := 0; i < n-2; i++ {
		if pre < b[i+1] {
			ans+=pre
		} else {
			ans+=b[i+1]
		}

		pre = b[i+1]
	}

	ans += b[n-2]

	fmt.Println(ans)
}
