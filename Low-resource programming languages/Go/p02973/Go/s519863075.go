package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func bs(a int, b []int) int {
	l,r := -1, len(b)
	c := (l+r)/2
	for ;; {

		if l == r-1 {
			break
		}

		if b[c] > a {
			r = c
		} else {
			l = c
		}

		c = (l+r)/2

	}
	return r
}

func main() {
	sc.Split(bufio.ScanWords)

	n := scanInt()
	a := make([]int,n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}

	ans := 0
	b := make([]int, 1)
	ans++
	b[0] = a[n-1]
	for i := 1; i < n; i++ {
		c := bs(a[n-i-1], b)
		if c == len(b) {
			ans++
			b = append(b,a[n-i-1])
		} else {
			b[c] = a[n-i-1]
		}
	}

	fmt.Println(ans)
}
