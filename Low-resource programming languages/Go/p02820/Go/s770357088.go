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
	sc.Buffer(make([]byte, 10000), 100000000)

	n, k := scanInt(), scanInt()
	r, s, p := scanInt(), scanInt(), scanInt()
	t := scanText()

	f := make([]bool, n)
	ans := 0

	for i := 0; i < n; i++ {
		if i-k<0 {
			if t[i] == 'r' {
				ans += p
			} else if t[i] == 's' {
				ans += r
			} else {
				ans += s
			}
			f[i] = true
		} else {
			if f[i-k] == true && t[i-k] == t[i] {
				continue
			} else {
				if t[i] == 'r' {
					ans += p
				} else if t[i] == 's' {
					ans += r
				} else {
					ans += s
				}
				f[i] = true
			}
		}
	}

	fmt.Println(ans)

}
