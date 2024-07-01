package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

// const (
// 	initialBufSize = bufio.MaxScanTokenSize //65536
// 	maxBufSize     = 100000
// )

func main() {
	scanner.Split(bufio.ScanWords)
	// buf := make([]byte, initialBufSize)
	// scanner.Buffer(buf, maxBufSize)

	s := next()
	k := nextInt()

	a := strings.Split(s, "")

	count := 0
	for i := 1; i < len(a); i++ {
		if a[i] == a[i-1] {
			a[i] = "0"
			count++
		}
	}

	if a[0] == a[len(a)-1] {
		fmt.Println(count*k + k - 1)
	} else {
		fmt.Println(count * k)
	}
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}
