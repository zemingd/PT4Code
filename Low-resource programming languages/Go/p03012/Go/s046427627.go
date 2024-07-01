package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60
const mod int = 1e9 + 7

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()

	w := make([]int, n)
	for i := 0; i < n; i++ {
		w[i] = ri()
	}

	ans := inf
	for i := 0; i < n; i++ {
		l, r := 0, 0
		for j := 0; j < i; j++ {
			l += w[j]
		}
		for j := i; j < n; j++ {
			r += w[j]
		}
		if diff := abs(l - r); diff < ans {
			ans = diff
		}
	}
	fmt.Println(ans)
}
