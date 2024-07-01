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
	a := []int{}
	for i := 0; i < n; i++ {
		if i%2 == 0 {
			a = append(a, nextInt())
		} else {
			a = append([]int{nextInt()}, a...)
		}
	}

	if n%2 == 0 {
		for _, v := range a {
			fmt.Printf("%v ", v)
		}
		fmt.Println()
		return
	}

	reversedA := make([]int, n)
	for i, v := range a {
		reversedA[n-i-1] = v
	}
	for _, v := range reversedA {
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
