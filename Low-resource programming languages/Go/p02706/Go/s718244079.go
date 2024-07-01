// @problemURL url.com
package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nt(s *bufio.Scanner) string {
	s.Scan()
	return s.Text()
}

func ni(s *bufio.Scanner) int {
	return atoi(nt(s))
}

func atoi(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var in = bufio.NewReader(os.Stdin)
	s := bufio.NewScanner(in)
	s.Split(bufio.ScanWords)

	// Code
	n, m := ni(s), ni(s)
	var sum int
	for i := 0; i < m; i++ {
		sum += ni(s)
	}
	sum = n - sum
	if sum < 0 {
		sum = -1
	}
	fmt.Println(sum)
}
