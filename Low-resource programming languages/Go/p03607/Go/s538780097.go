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

	a := make(map[int]int, n)
	var ans int
	for i := 0; i < n; i++ {
		t := r()
		if a[t] == 1 {
			a[t] = 0
			ans--
		} else {
			a[t] = 1
			ans++
		}
	}
	fmt.Println(ans)
}
