package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	_ = nextInt()
	a := nextIntArray()
	rmap := make([]int, 9)
	for _, ai := range a {
		if ai >= 3200 {
			rmap[8]++
		} else {
			rmap[ai/400]++
		}
	}

	under := 0
	for _, v := range rmap[:8] {
		if v > 0 {
			under++
		}
	}
	fmt.Println(max(1, under), under+rmap[8])
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
