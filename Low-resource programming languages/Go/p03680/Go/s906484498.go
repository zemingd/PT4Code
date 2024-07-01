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

func main() {
	sc.Split(bufio.ScanWords)
	n := r()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = r() - 1
	}

	var nowIdx int
	var ct int
	for {
		nextIdx := a[nowIdx]

		a[nowIdx] = -1

		if nextIdx == -1 {
			ct = -1
			break
		}

		if nowIdx == 1 {
			break
		}

		nowIdx = nextIdx
		ct++
	}
	fmt.Println(ct)
}
