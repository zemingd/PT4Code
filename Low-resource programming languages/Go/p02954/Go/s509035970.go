package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	n := len(s)

	boundary := make([]int, 0)
	for i := 0; i < n-1; i++ {
		if string(s[i]) == "L" && string(s[i+1]) == "R" {
			boundary = append(boundary, i)
		}
	}
	boundary = append(boundary, n-1)

	l := 0
	ans := make([]int, n)
	middle := 0
	for _, r := range boundary {
		tmp := []int{0, 0}
		for i := l; i < r+1; i++ {
			tmp[i%2] += 1
			if string(s[i]) == "R" && string(s[i+1]) == "L" {
				middle = i
			}
		}
		ans[middle] = tmp[middle%2]
		ans[middle+1] = tmp[1-middle%2]
		l = r + 1
	}

	a := make([]string, 0)
	for _, i := range ans {
		a = append(a, strconv.Itoa(i))
	}

	fmt.Println(strings.Join(a, " "))
}
