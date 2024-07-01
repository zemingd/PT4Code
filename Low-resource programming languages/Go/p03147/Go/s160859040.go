package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	n := nextInt()
	h := nextIntArray()
	down, up := h[n-1], h[0]
	for i := 1; i < n; i++ {
		if d := h[i] - h[i-1]; d < 0 {
			down -= d
		} else {
			up += d
		}
	}
	fmt.Println(max(down, up))
}

func lcm(a, b int64) int64 {
	return (a / gcd(a, b)) * b
}

func gcd(a, b int64) int64 {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

const size = 1000000

var reader = bufio.NewReaderSize(os.Stdin, size)

func nextLine() string {
	var line, buffer []byte
	isPrefix := true
	var err error
	for isPrefix {
		line, isPrefix, err = reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
	}
	return string(buffer)
}
func nextStringArray() []string {
	return strings.Split(nextLine(), " ")
}
func nextInt() int {
	n, _ := strconv.Atoi(nextLine())
	return n
}

func nextIntArray() []int {
	s := strings.Split(nextLine(), " ")
	n := len(s)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], _ = strconv.Atoi(s[i])
	}
	return a
}

func min(i, j int) int {
	if i > j {
		return j
	}
	return i
}

func max(i, j int) int {
	if i < j {
		return j
	}
	return i
}
