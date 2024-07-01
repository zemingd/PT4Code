package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var a, b int

func main() {
	a = nextInt()
	b = nextInt()
	var answer, char string
	var time int
	if a < b {
		char = strconv.Itoa(a)
		time = b
	} else {
		char = strconv.Itoa(b)
		time = a
	}
	for i := 0; i < time; i++ {
		answer += char
	}
	fmt.Println(answer)
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
