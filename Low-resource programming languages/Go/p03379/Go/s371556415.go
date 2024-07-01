package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

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
func nextIntArray() []int {
	s := strings.Split(nextLine(), " ")
	n := len(s)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], _ = strconv.Atoi(s[i])
	}
	return a
}

func main() {
	n, _ := strconv.Atoi(nextLine())
	x := nextIntArray()
	cx := make([]int, n)
	copy(cx, x)
	sort.Ints(cx)
	median := cx[n/2]

	for _, xi := range x {
		if xi < median {
			fmt.Println(median)
		} else {
			fmt.Println(cx[n/2-1])
		}
	}
}

func min(i, j int) int {
	if i > j {
		return j
	}
	return i
}
