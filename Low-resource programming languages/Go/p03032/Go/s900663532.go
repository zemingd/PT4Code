package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60

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

func main() {
	sc.Split(bufio.ScanWords)
	n, k := ri(), ri()
	v := make([]int, n)
	for i := 0; i < n; i++ {
		v[i] = ri()
	}
	ans := 0
	for l := 0; l <= n && l <= k; l++ {
		for r := 0; r+l <= n && r+l <= k; r++ {
			d := k - (l + r)
			a := make([]int, l+r)
			a = append(a, v[:l]...)
			a = append(a, v[n-r:]...)
			sort.Ints(a)
			tmp := 0
			for _, aa := range a {
				if aa < 0 && d != 0 {
					d--
					continue
				} else {
					tmp += aa
				}
			}
			if tmp > ans {
				ans = tmp
			}
		}
	}
	fmt.Println(ans)
}
