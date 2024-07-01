package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func rcvInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n, m := rcvInt(), rcvInt()

	var k int
	bucket := make(map[int]int, m)
	for i := 0; i < n; i++ {
		k = rcvInt()
		for j := 0; j < k; j++ {
			bucket[rcvInt()]++
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
