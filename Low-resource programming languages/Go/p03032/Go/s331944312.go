package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60
const mod int = 1e9 + 7

func ri() (n int) {
	sc.Scan()
	b := sc.Bytes()
	x := 1
	if b[0] == 45 {
		x *= -1
		b = b[1:]
	}
	for _, v := range b {
		n = n*10 + int(v-48)
	}
	return n * x
}

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func larger(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := ri(), ri()

	v := make([]int, n)
	for i := 0; i < n; i++ {
		v[i] = ri()
	}

	minNK := smaller(n, k)
	ansMax := 0
	for j := 0; j <= minNK; j++ {
		for i := 0; i <= minNK-j; i++ {
			a := make([]int, 0, minNK-j)
			lft := i
			rgt := minNK - j - i
			a = append(a, v[:lft]...)
			a = append(a, v[n-rgt:]...)
			sort.Ints(a)
			ct := j
			ans := 0
			for _, aa := range a {
				if ct > 0 && aa < 0 {
					ct--
					continue
				}
				ans += aa
			}
			ansMax = larger(ansMax, ans)
		}
	}
	fmt.Println(ansMax)
}
