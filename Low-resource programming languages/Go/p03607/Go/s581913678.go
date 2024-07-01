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
	for i := 0; i < n; i++ {
		x := r()
		if _, ok := a[x]; !ok {
			a[x] = 1
		} else {
			a[x]++
		}
	}
	var ans int
	for _, v := range a {
		if v%2 != 0 {
			ans++
		}
	}
	fmt.Println(ans)
}
