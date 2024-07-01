package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func isInt(f float64) bool {
	return math.Floor(f) == f
}

func main() {
	scanner.Split(bufio.ScanWords)

	x := nextInt()
	for i := x; i > 0; i-- {
		if isInt(math.Sqrt(float64(i))) {
			fmt.Println(i)
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
