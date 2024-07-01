package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

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

	v := make([]int, n)
	for i := 0; i < n; i++ {
		v[i] = ri()
	}
	c := make([]int, n)
	for i := 0; i < n; i++ {
		c[i] = ri()
	}

	ans := 0
	for i := 0; i < n; i++ {
		if diff := v[i] - c[i]; diff > 0 {
			ans += diff
		}
	}
	fmt.Println(ans)
}
