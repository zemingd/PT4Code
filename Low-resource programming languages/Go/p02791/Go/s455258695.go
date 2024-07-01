package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	s := stdin.Text()

	list := convStringListToIntList(strings.Split(s, " "))

	result := 0
	for i, v := range list {
		for j := i + 1; j < n; j++ {
			if v >= list[j] {
				result++
				break
			}
		}
	}
	fmt.Printf("%d\n", result)
}

func convStringListToIntList(list []string) []int {
	newList := make([]int, len(list))
	for i, v := range list {
		a, _ := strconv.Atoi(v)
		newList[i] = a
	}
	return newList
}
