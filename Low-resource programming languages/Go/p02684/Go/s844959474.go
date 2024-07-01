package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	sc = bufio.NewScanner(os.Stdin)
/*	sc = bufio.NewScanner(strings.NewReader(
		`6 727202214173249351
6 5 2 5 3 2`))*/

	N int64
	K int64
	A []int
)

func main() {
	intArray := readInt64Array()
	N, K = intArray[0], intArray[1]

	A = readIntArray()

	routes := []int{1}
	startIndex := 0
	for {
		next := A[routes[len(routes)-1]-1]
		i := find(routes, next)
		if i > 0 {
			startIndex = i
			break
		}
		routes = append(routes, next)
	}

	i := int((K - int64(startIndex+1)) % int64(len(routes)-1-startIndex))
	fmt.Println(routes[i+startIndex])
}

func find(a []int, target int) int {
	for i, n := range a {
		if target == n {
			return i
		}
	}
	return -1
}

func readLine() string {
	if sc.Scan() {
		return sc.Text()
	}
	return "error"
}

func readStringArray() []string {
	return strings.Split(readLine(), " ")
}

func readIntArray() []int {
	a := readStringArray()
	ints := make([]int, len(a))
	for i, s := range a {
		n, err := strconv.Atoi(s)
		if err != nil {
			panic(err)
		}
		ints[i] = n
	}
	return ints
}

func readInt64Array() []int64 {
	a := readStringArray()
	ints := make([]int64, len(a))
	for i, s := range a {
		n, err := strconv.ParseInt(s, 10, 64)
		if err != nil {
			panic(err)
		}
		ints[i] = n
	}
	return ints
}

func readInt() int {
	n, err := strconv.Atoi(readLine())
	if err != nil {
		panic(err)
	}
	return n
}
