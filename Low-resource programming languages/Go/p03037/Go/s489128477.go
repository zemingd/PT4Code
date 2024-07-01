package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	var n, m int
	fmt.Fscan(in, &n, &m)
	var ll, rr int
	rr = 100001
	for i := 0; i < m; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)
		if l > ll {
			ll = l
		}
		if r < rr {
			rr = r
		}
	}
	fmt.Println(rr - ll + 1)
}
