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

func mul(a []int) int { // multple
	res := 1
	for _, v := range a {
		res *= v
	}
	return res
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = ri()
	}

	if len(a) == 1 {
		fmt.Println(a[0])
		return
	}

	bunsi := float64(mul(a))

	bunbo := 0.0
	m := float64(mul(a))
	for _, aa := range a {
		bunbo += m / float64(aa)
	}

	ans := bunsi / bunbo

	fmt.Println(ans)
}
