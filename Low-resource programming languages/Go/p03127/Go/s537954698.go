package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func r() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func gcd(a, b int) int {
	for b != 0 {
		c := a % b
		a, b = b, c
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	n := r()

	var x int
	y := r()
	for i := 1; i < n; i++ {
		x = r()
		y = gcd(x, y)
	}

	fmt.Println(y)
}
