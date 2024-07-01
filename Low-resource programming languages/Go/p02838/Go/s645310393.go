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
	a := make([]uint, n)

	for i := 0; i < n; i++ {
		a[i] = uint(scanInt())
	}

	bitc := make([]uint, 61)

	for _, e := range a {
		for i := uint(0); i < 61; i++ {
			bitc[i] += (e >> i)&1
		}
	}

	ans := uint(0)

	for i, e := range bitc {
		ans = (ans+(e*(uint(n)-e)%mod)*(1<<uint(i))%mod)%mod
	}

	fmt.Println(ans)
}

const mod = 1000000007
