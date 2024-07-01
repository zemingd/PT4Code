package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func getInt() (n int) {
	sc.Scan()
	n, _ = strconv.Atoi(sc.Text())
	return n
}

func main() {
	sum := 0
	N := getInt()
	dArray := make([]int, N)
	for i := 0; i < N; i++ {
		dArray[i] = getInt()
	}

	for i := 0; i < N-1; i++ {
		buf := 0
		for j := i + 1; j < N; j++ {
			buf += dArray[j]
		}
		sum += dArray[i] * buf
	}

	fmt.Println(sum)
}
