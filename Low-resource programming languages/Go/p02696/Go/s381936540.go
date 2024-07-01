package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)

	a, b, n := float64(nextInt()), float64(nextInt()), nextInt()

	max := 0
	if n <= int(b) {
		max = int(math.Floor(a * float64(n) / b))
	} else {
		max = int(b) - 1
	}
	fmt.Println(max)
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
