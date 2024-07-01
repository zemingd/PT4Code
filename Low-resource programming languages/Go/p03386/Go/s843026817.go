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

func min(i, j int) int {
	if i > j {
		return j
	}
	return i
}

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	d := map[int]bool{}
	for i := 0; i < k; i++ {
		d[a+i] = true
		d[b-i] = true
	}

	arr := []int{}
	for k := range d {
		if a <= k && k <= b {
			arr = append(arr, k)
		}
	}
	sort.Ints(arr)
	for _, v := range arr {
		fmt.Println(v)
	}
}
