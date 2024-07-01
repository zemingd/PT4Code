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
	for i := 9; i > 0; i-- {
		if n%i == 0 {
			return "Yes"
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
