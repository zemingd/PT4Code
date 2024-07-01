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

	a := nextInt()
	b := nextInt()
	k := nextInt()

	for i := a; i < b+1; i++ {
		if i < a+k {
			fmt.Println(i)
			continue
		}
		if b-k < i {
			fmt.Println(i)
			continue
		}
	}

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
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
