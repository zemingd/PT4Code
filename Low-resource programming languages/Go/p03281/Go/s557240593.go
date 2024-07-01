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

	cnt := 0
	for i := 1; i <= n; i += 2 {
		if numDivSlow(i) == 8 {
			cnt++
		}

	}

	fmt.Println(cnt)

}

// 約数の数をカウントする(愚直)
func numDivSlow(a int) int {
	cnt := 1
	for i := 1; i <= a/2; i++ {
		if a%i == 0 {
			cnt++
		}
	}
	return cnt
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
