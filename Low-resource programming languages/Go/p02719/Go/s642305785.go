package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	N := nextInt()
	K := nextInt()

	if N < K {
		fmt.Println(N)
		return
	}
	if K == 1 {
		fmt.Println(0)
		return
	}
	backN := int(1e18)
	for 0 < N && N <= backN {
		backN = N
		N = N - K
		if N < 0 {
			N *= -1
		}
	}
	fmt.Println(backN)
}
