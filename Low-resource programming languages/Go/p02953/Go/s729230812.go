package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60
const mod int = 1e9 + 7

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()

	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = ri()
	}

	h = append([]int{-1}, h...)
	ok := true
	for i := 1; i < len(h); i++ {
		switch {
		case h[i-1] > h[i]:
			ok = false
			break
		case h[i-1] < h[i]:
			h[i]--
		}
	}

	if ok {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
