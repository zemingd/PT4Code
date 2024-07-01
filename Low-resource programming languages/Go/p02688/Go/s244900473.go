package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func sliceAtoi(arr []string) []int {
	si := make([]int, 0, len(arr))
	for _, a := range arr {
		i, _ := strconv.Atoi(a)
		si = append(si, i)
	}
	return si
}

func main() {
	s := sliceAtoi(strings.Split(nextLine(), " "))
	n, k := s[0], s[1]
	arr := make([]int, n, n)
	for i := 0; i < k; i++ {
		nextLine()
		a := sliceAtoi(strings.Split(nextLine(), " "))
		for _, m := range a {
			arr[m-1] = 1
		}
	}

	result := 0
	for _, m := range arr {
		if m == 0 {
			result += 1
		}
	}

	fmt.Println(result)
}
