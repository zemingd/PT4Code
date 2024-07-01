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
	x := nextInt()
	t := nextInt()

	if n%x == 0 {
		fmt.Println(t * (n / x))
		return
	}
	fmt.Println(t + t*(n/x))

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
