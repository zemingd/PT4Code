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

	ans := uint(0)

	for i := 0; i < 64; i++ {
		c := uint(0)
		for j := range a {
			c += (a[j]>>uint(i))&1
		}

		ans = (ans+(c*(uint(n)-c)%mod)*(1<<uint(i))%mod)%mod
	}

	fmt.Println(ans)
}

const mod = 1000000007
