package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	r := getInt()
	fmt.Println(3 * r * r)
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
