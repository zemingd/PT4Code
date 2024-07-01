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
	s := scanText()

	ans := 0

	for i := 0; i < n; i++ {
		a := zalgo(s[i:])

		for i := 0; i < len(a); i++ {
			if a[i] < i+1 {
				ans = max(ans, a[i])
			}
		}
	}

	fmt.Println(ans)
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




func zalgo(s string) []int {
	n := len(s)
	res := make([]int, n)
	i, j := 1, 0
	for i<n {
		for i+j < n && s[j] == s[i+j] {
			j++
		}
		res[i] = j
		if j == 0 {
			i++
			continue
		}
		k := 1
		for i+k < n && k+res[k] < j {
			res[i+k] = res[k]
			k++
		}
			i += k
			j -= k
	}
	return res
}
