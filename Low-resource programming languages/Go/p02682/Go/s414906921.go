package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	ints := readIntArray()
	a, b, c, k := ints[0], ints[1], ints[2], ints[3]

	max := 0
	if a >= k {
		max = k
	}else if a+b >= k {
		max = a
	}else if a+b+c >= k {
		max = a - (k - a - b)
	}
	fmt.Println(max)
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

func readInt() int {
	n, err := strconv.Atoi(readLine())
	if err != nil {
		panic(err)
	}
	return n
}
