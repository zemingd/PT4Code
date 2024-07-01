package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Println(abc178b(os.Stdin))
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func abc178b(r io.Reader) int {
	sc := bufio.NewScanner(r)
	sc.Split(bufio.ScanWords)

	a, b, c, d := nextInt(sc), nextInt(sc), nextInt(sc), nextInt(sc)

	switch {
	case b > 0 && d > 0:
		return b * d
	case b <= 0 && d > 0:
		return b * c
	case b > 0 && d <= 0:
		return a * d
	case b <= 0 && d <= 0:
		return a * c
	default:
		return 0
	}
}
