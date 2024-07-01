package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func resolve(x, y int) string {
	if x == 1 {
		if y == 2 || y == 4 {
			return "Yes"
		} else {
			return "No"
		}
	}

	if x*4 < y {
		return "No"
	}

	if (y-2*x)%2 != 0 || (4*x-y)%2 != 0 {
		return "No"
	}

	return "Yes"
}

func main() {
	x, y := scanInt(), scanInt()

	fmt.Println(resolve(x, y))
}
