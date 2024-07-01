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
	var flg bool
	for i, v := range list {
		flg = true
		for j := 0; j <= i; j++ {
			if v > list[j] {
				flg = false
				break
			}
		}
		if flg {
			result++
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
