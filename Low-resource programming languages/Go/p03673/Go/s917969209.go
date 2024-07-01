package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
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
	n := ri()
	b := make([]string, 0, n)
	parity := n & 1
	for i := 0; i < n; i++ {
		sc.Scan()
		if i&1 == parity {
			b = append(b, sc.Text())
		} else {
			b = append([]string{sc.Text()}, b...)
		}
	}
	fmt.Println(strings.Join(b, " "))
}
