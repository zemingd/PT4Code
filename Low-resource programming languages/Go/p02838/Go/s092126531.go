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

	ans := int64(0)

	for i := 0; i < 64; i++ {
		c1, c2 := int64(0), int64(0)
		for j := range a {
			if a[j]&1 == 1 {
				c1++
			} else {
				c2++
			}
			a[j] /= 2
		}

		ans = (ans+(c1*c2%mod)*(1<<uint(i))%mod)%mod
	}

	fmt.Println(ans)
}

const mod = 1000000007
