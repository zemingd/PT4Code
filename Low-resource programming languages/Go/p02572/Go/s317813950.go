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
	ru := make([]int, n+1)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	ru[n] = 0
	for i := n - 1; 0 <= i; i-- {
		ru[i] = a[i] + ru[i+1]
	}
	sum := 0
	for i := 0; i < n; i++ {
		sum += (a[i] * ru[i+1]) % modd
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
