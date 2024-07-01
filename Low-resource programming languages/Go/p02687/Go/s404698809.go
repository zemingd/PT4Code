package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func max(a int, b int) int {
	if a >= b {
		return a
	}
	return b
}

type Node struct {
	Index     int
	Value     int
	Neighbors []*Node
	Len       int
	IsSearched  bool
}

var nodes []*Node
var already map[int]bool


func main() {
	sc.Split(bufio.ScanWords)
	S := nextLine()
	if S == "ABC" {
		fmt.Printf("ARC")
	} else {
		fmt.Printf("ABC")
	}
}


//const MAX_INT int = 1_000_000_000
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

func nextInt64() int64 {
	sc.Scan()
	hoge := sc.Text()
	i, e := strconv.ParseInt(hoge, 0, 64)
	if e != nil {
		panic(e)
	}
	return i
}
