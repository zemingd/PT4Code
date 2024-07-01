package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func plas(i int) int {
	return i + 1
}
func minus(i int) int {
	return i - 1
}
var sc = bufio.NewScanner(os.Stdin)
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := nextInt()
	b := nextInt()
	var ans int
	//var n, a, b, ans int
	//fmt.Scan(&n, &a, &b)
	//if b-a > 1 {
	if (b-a)%2 == 0 {
		ans = (b - a) / 2
	} else {
		k := a - 1
		j := n - b
		if k <= j {
			ans = b - 1
		} else {
			ans = n - a
		}
	}
	fmt.Println(ans)
}