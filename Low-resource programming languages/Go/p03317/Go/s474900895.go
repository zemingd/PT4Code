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
	for i := 0; i < n; i++ {
		_ = ri()
	}

	cost := 0
	cost += (n - 1) / (k - 1)
	if (n-1)%(k-1) != 0 {
		cost++
	}
	fmt.Println(cost)
}
