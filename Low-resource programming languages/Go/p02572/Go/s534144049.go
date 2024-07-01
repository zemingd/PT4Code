package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const modd int = 1000000007

func main() {
	scanInit()

	n := nextInt()
	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	sum := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			//fmt.Println("DBG", i, j) //! DBG
			sum += (a[i] * a[j]) % modd
		}
	}
	fmt.Println(sum % modd)

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
