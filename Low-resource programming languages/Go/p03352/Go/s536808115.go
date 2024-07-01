package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()
	ansmax := 0

	for i := 1; i*i <= n; i++ {
		// iのpowの最大値を求める
		ipowmax := 0
		for j := 0; j <= 10; j++ {
			if pow(i, j) <= n {
				ipowmax = max(ipowmax, pow(i, j))
			}
		}
		ansmax = max(ansmax, ipowmax)
	}

	fmt.Println(ansmax)

}
func pow(a, b int) int {
	var ret int = 1
	for b > 0 {
		if (b & 1) == 1 {
			ret *= a
		}
		a *= a
		b >>= 1
	}
	return ret
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
