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
	k := nextInt()
	list := make([]int, n)
	full := 0
	absmin := 999
	absminIdx := 0

	for i := 0; i < n; i++ {
		list[i] = k + i
		full += list[i]

		if abs(list[i]) < absmin {
			absmin = abs(list[i])
			absminIdx = i
		}
	}

	fmt.Println(full - list[absminIdx])

}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

// ---- readfunc
func scanInit() {
	const cap = 64 * 1024
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
