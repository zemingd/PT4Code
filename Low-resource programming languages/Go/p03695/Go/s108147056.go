package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanInit()

	n := nextInt()
	al := make([]int, n)
	m := map[int]int{}

	for i := 0; i < n; i++ {
		al[i] = nextInt()
		m[min(al[i]/400, 8)]++
	}

	cmin, cmax := len(m), len(m)

	over := m[8]
	if over > 0 {
		cmin--
		cmax--
		cmax = min(cmax+over, 8)
	}

	fmt.Println(cmin, cmax)

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

// ---- readfunc
var sc = bufio.NewScanner(os.Stdin)

func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
