package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func rcv() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n, m := rcv(), rcv()

	var k int
	bucket := make(map[int]int, m)
	for i := 0; i < n; i++ {
		k = rcv()
		for j := 0; j < k; j++ {
			bucket[rcv()]++
		}
	}

	var ans int
	for _, v := range bucket {
		if v == n {
			ans++
		}
	}
	fmt.Println(ans)
}
