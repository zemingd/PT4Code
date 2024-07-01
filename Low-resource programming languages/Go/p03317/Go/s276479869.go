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

func main() {
	sc.Split(bufio.ScanWords)
	n, k := ri(), ri()

	a := make([]int, n)
	mn := inf
	var mnIdx int
	for i := 0; i < n; i++ {
		a[i] = ri()
		if a[i] < mn {
			mn = a[i]
			mnIdx = i
		}
	}

	cost := 0
	l := mnIdx - 1
	if l > 0 {
		cost += l/(k-1) + l%(k-1)
	}
	r := (n - 1) - mnIdx
	if r > 0 {
		cost += r/(k-1) + r%(k-1)
	}

	fmt.Println(cost)
}
