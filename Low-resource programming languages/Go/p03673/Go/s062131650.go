package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)

	n := nextInt()
	first := make([]int, 0, n/2)
	second := make([]int, 0, n/2)
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			first = append(first, nextInt())
		} else {
			second = append(second, nextInt())
		}
	}

	a := make([]int, 0, n)
	if n%2 == 0 {
		for i := len(second) - 1; i >= 0; i-- {
			a = append(a, second[i])
		}
		a = append(a, first...)
	} else {
		for i := len(first) - 1; i >= 0; i-- {
			a = append(a, first[i])
		}
		a = append(a, second...)
	}

	for _, v := range a {
		fmt.Printf("%v ", v)
	}
	fmt.Println()
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}
func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}
