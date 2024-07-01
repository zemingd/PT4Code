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
	pl[0] = nextInt()
	cnt := 0
	for i := 1; i < n; i++ {
		pl[i] = nextInt()
		if pl[i-1] < pl[i] {
			cnt++
		}
	}

	fmt.Println(n - cnt)

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
