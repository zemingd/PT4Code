package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func r() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func abs(x int) int {
	if x < 0 {
		return -x
	} else {
		return x
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	n := r()

	t, x, y := 0, 0, 0
	var tn, xn, yn int
	flg := true
	for i := 0; i < n; i++ {
		tn, xn, yn = r(), r(), r()
		dt, dx, dy := abs(tn-t), abs(xn-x), abs(yn-y)
		if !(dx+dy <= dt && (dx+dy)%2 == dt%2) {
			flg = false
		}
		t, x, y = tn, xn, yn
	}
	if flg {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
