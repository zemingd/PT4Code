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
	all := 0
	for i := 0; i < n; i++ {
		w[i] = ri()
		all += w[i]
	}

	sum := 0
	ans := inf
	for i := 0; i < n; i++ {
		sum += w[i]
		rest := all - sum
		if x := abs(sum - rest); x < ans {
			ans = x
		}
	}

	fmt.Println(ans)
}
