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
	pl := make([]int, n)
	ml := make([]int, n)
	pl[0] = nextInt()
	ml[0] = pl[0]

	cnt := 1 // 1は絶対にOK
	for i := 1; i < n; i++ {
		pl[i] = nextInt()
		ml[i] = min(ml[i-1], pl[i])
		if pl[i] == ml[i] {
			cnt++
		}
	}

	fmt.Println(cnt)

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

// ---- readfunc
func scanInit() {
	const cap = 1000 * 1024
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
