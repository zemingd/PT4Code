package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func Scan() string {
	s.Scan()
	return s.Text()
}

func main() {
	fmt.Println(p())
}

func ScanInt() int {
	a, err := strconv.Atoi(Scan())
	if err != nil {
		return 0
	}
	return a
}

func test(n int) string {
	for i := 9; i > 1; i-- {
		if n%i == 0 {
			a := n / i
			if a < 10 {
				return "Yes"
			}
			return "No"
		}
	}
	return "No"
}

func p() string {
	a := ScanInt()
	if a == 0 || a > 81 {
		return "No"
	}
	return test(a)
}
