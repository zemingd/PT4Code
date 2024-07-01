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
	passed := make([]int, n+1)
	for i := range passed {
		passed[i] = -1
	}
	passed[1] = 0
	var bp, r int
	for i := 1; i <= n; i++ {
		p = a[p]
		if passed[p] != -1 {
			k -= passed[bp] + 1
			r = i - passed[p]
			break
		}

		passed[p] = i
		ans[i] = p
		if i == k {
			fmt.Println(p)
			return
		}
		bp = p
	}

	k %= r
	fmt.Println(ans[k])
}
