package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()

	counter := 0
	for i := 0; i < n; i++ {
		a, b := nextInt(), nextInt()
		counter += b
		if counter >= k {
			fmt.Println(a)
			break
		}
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
