package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wtr = bufio.NewWriter(os.Stdout)
)

func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := scanInt()
	a := make([]int64, n)

	for i := 0; i < n; i++ {
		a[i] = int64(scanInt())
	}

	l := 0
	m := int64(0)
	for _, e := range a {
		m = max(e,m)
	}

	for m>0 {
		m /= 2
		l++
	}

	ans := int64(0)
	p := int64(1)
	for i := 0; i < l; i++ {
		c1, c2 := int64(0), int64(0)
		for _, e := range a {
			if e/p &1 == 1 {
				c1++
			} else {
				c2++
			}
		}
		// fmt.Println(c1,c2)
		ans = (ans+(c1*c2%mod)*p%mod)%mod
		p*=2
	}

	fmt.Println(ans)
}

const mod = 1000000007

func max(a,b int64) int64 {
	if a>b {
		return a
	}
	return b
}

