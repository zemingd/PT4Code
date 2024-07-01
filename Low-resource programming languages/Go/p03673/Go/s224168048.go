package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()

	as := make([]int, n)
	for i := range as {
		as[i] = getInt()
	}

	b := make([]int, 0, n)
	i := n - 1
	for ; i >= 0; i -= 2 {
		b = append(b, as[i])
	}

	if i == -2 {
		i = 1
	} else {
		i = 0
	}

	for ; i < n; i += 2 {
		b = append(b, as[i])
	}

	for _, x := range b {
		fmt.Println(x)
	}
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

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
