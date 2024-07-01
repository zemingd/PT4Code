package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func rcv() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := rcv(), rcv()
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = rcv()
	}
	sort.Ints(h)

	a := int(^uint(0) >> 1)
	for i := k - 1; i < n; i++ {
		if x := h[i] - h[i-k+1]; x < a {
			a = x
		}
	}
	fmt.Println(a)
}
