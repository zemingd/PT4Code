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
	ll = -1
	rr = -1
	for i := 0; i < m; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)
		if ll == -1 || l > ll {
			ll = l
		}
		if rr == -1 || r < rr {
			rr = r
		}
	}
	fmt.Println(rr - ll + 1)
}
