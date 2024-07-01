package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := nextInt()
	m := nextInt()
	if n == m {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

var scanner *bufio.Scanner

func init() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}
func nextInt() int {
	if !scanner.Scan() {
		panic("No more token.")
	}
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic("nextInt(): cannot convert to int: " + scanner.Text())
	}
	return num
}
