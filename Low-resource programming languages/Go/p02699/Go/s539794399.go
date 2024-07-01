package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc.Split(bufio.ScanWords)
	var S, W int
	nextInt(&S, &W)
	if W >= S {
		fmt.Printf("unsafe")
	} else {
		fmt.Printf("safe")
	}
}

const MAX_INT int = 1_000_000_000

var sc = bufio.NewScanner(os.Stdin)

var reader = bufio.NewReaderSize(os.Stdin, 1000000)
var writer = bufio.NewWriter(os.Stdout)

func nextLine() string {
	buffer := make([]byte, 0)
	for true {
		line, isPrefix, err := reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

func nextInt(A ...*int) {
	L := strings.Split(nextLine(), " ")
	for i, a := range A {
		*a, _ = strconv.Atoi(L[i])
	}
}
func nextInts(A *[]int) {
	L := strings.Split(nextLine(), " ")
	(*A) = make([]int, len(L))
	for i, l := range L {
		(*A)[i], _ = strconv.Atoi(l)
	}
}

func nextInt64(A ...*int64) {
	L := strings.Split(nextLine(), " ")
	for i, a := range A {
		*a, _ = strconv.ParseInt(L[i], 0, 64)
	}
}

func max(a int, b int) int {
	if a >= b {
		return a
	}
	return b
}

