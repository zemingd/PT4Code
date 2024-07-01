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

	a := make([]float64, n)
	for i := 0; i < n; i++ {
		a[i] = float64(ri())
	}

	if len(a) == 1 {
		fmt.Println(a[0])
		return
	}

	x := 1.0
	for _, v := range a {
		x *= v
	}

	y := 0.0
	for _, v := range a {
		y += x / v
	}

	// fmt.Println(x, y)

	ans := x / y
	fmt.Println(ans)
}
