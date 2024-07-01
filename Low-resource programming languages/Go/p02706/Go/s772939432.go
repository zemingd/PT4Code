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
	M := nextInt()

	for i := 0; i < M; i++ {
		N -= nextInt()
	}

	if N >= 0 {
		fmt.Println(N)
	} else {
		fmt.Println(-1)
	}
}
