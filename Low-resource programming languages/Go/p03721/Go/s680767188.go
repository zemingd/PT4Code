package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	t := nextIntArray()
	n, k := t[0], t[1]
	b := map[int]int{}
	for i := 0; i < n; i++ {
		t = nextIntArray()
		b[t[0]] += t[1]
	}
	keys := make([]int, n)
	for key := range b {
		keys = append(keys, key)
	}
	sort.Ints(keys)
	for _, v := range keys {
		if k <= b[v] {
			fmt.Println(v)
			return
		}
		k -= b[v]
	}
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
