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
	n := ri()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = ri()
	}

	// fmt.Println(a)
	fmt.Println(0)
}
