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

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ { res[i] = scanInt() }
	return res
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	a, b := int64(scanInt()), int64(scanInt())

	fact := factorization(euclidean(a,b))

	ans := len(fact) + 1

	fmt.Println(ans)

}

func euclidean(a,b int64) int64 {
	r, x := a%b, b
	for r != 0 {
		x, r = r, x%r
	}
	return x
}

func factorization(n int64) map[int64]int {
	res := make(map[int64]int, 0)
	for i := int64(2); i*i <= n; i++ {
		for n%i == 0 {
			res[i]++
			n /= i
		}
	}
	if n!=1 {
		res[n] = 1
	}
	return res
}
