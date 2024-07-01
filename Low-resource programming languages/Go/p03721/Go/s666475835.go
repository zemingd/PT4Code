package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60

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
	bk := make([]int, 1e5+1)
	var a, b int
	for i := 0; i < n; i++ {
		a, b = ri(), ri()
		bk[a] += b
	}
	acc := 0
	for i, v := range bk {
		acc += v
		if acc >= k {
			fmt.Println(i)
			return
		}
	}
}
