package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	buf := make([]byte, 1024 * 1024)
	scanner.Buffer(buf, bufio.MaxScanTokenSize)
	scanner.Split(bufio.ScanWords)

	n := nextInt()
	sum := 0
	m := nextInt()

	for i := 0; i < n - 1; i++ {
		a := nextInt()
		if a < m {
			sum += m - a
		} else {
			m = a
		}
	}

	fmt.Println(sum)
}
