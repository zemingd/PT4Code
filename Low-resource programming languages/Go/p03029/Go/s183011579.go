package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanInt() int {
	scanner.Scan()
	a, _ := strconv.Atoi(scanner.Text())
	return a
}
func scanString() string {
	scanner.Scan()
	return scanner.Text()
}

func solve(wholeAppleNum, fragmentNum int) int {
	t := wholeAppleNum*3 + fragmentNum
	return t / 2
}

//
func main() {
	scanner.Split(bufio.ScanWords)
	a := scanInt()
	p := scanInt()
	ans := solve(a, p)
	fmt.Println(ans)
}
