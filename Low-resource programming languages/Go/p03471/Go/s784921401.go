package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	sc = bufio.NewScanner(os.Stdin)
)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	y := nextInt()

	var i, j, k int
	for i = 0; i <= n; i++ {
		for j = 0; j <= n-i; j++ {
			k = n - i - j
			if i*10000+j*5000+k*1000 == y {
				fmt.Printf("%d %d %d\n", i, j, k)
				return
			}
		}
	}

	fmt.Println("-1 -1 -1")
}

func nextInt() int {
	i, err := strconv.Atoi(nextWord())
	pnc(err)
	return i
}

func nextWord() string {
	sc.Scan()
	return sc.Text()
}

func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
