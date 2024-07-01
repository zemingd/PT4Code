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

func rs() string {
	sc.Scan()
	return sc.Text()
}

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1e6), 1e6)

	_ = ri() // n
	s := rs()

	ct1 := 0
	ct2 := 0
	for _, ss := range s {
		if ss == '.' {
			ct1++
		} else { // ss == '#'
			ct2++
		}
	}

	fmt.Println(smaller(ct1, ct2))
}
