package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	n, k := scanInt(), scanInt()
	a := make([]int, n+1)
	for i := 1; i <= n; i++ {
		a[i] = scanInt()
	}

	p := 1
	ans := make([]int, n+1)
	ans[0] = p
	passed := make(map[int]int, n)
	passed[p] = 0
	var r int
	for i := 1; i <= n; i++ {
		p = a[p]
		if _, ok := passed[p]; ok {
			k -= passed[p]
			r = i - passed[p] - 1
			break
		}

		passed[p] = i
		ans[i] = p
		if i == k {
			fmt.Println(p)
			return
		}
	}

	k %= r
	fmt.Println(ans[k+1])
}
