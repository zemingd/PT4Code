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
	if n < 10 || n%2 == 1 {
		fmt.Println(0)
		return
	}

	tcnt := 0 //ka
	for div := 10; div <= n; div *= 5 {
		tcnt += n / div
	}

	fmt.Println(tcnt)

}
func d(s string, i int) int {
	return int(s[i] - '0')
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

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // default=64*1024
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
