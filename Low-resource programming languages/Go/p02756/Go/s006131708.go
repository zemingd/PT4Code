package main

import (
	"fmt"
	"strings"
)

func Reverse(arr []string) []string {
	for i := 0; i < len(arr)/2; i++ {
		j := len(arr) - i - 1
		arr[i], arr[j] = arr[j], arr[i]
	}
	return arr
}

func main() {
	var s string
	var n int
	fmt.Scan(&s, &n)
	arr := make([]string, 0)
	arr = append(arr, s)

	var q, f int
	var c string
	var reverse bool
	for i := 0; i < n; i++ {
		fmt.Scan(&q)
		if q == 1 {
			if reverse {
				reverse = false
			} else {
				reverse = true
			}
		} else {
			fmt.Scan(&f, &c)
			if f == 1 {
				if reverse {
					arr = append(arr, c)
				} else {
					arr = append([]string{c}, arr...)
				}
			} else {
				if reverse {
					arr = append([]string{c}, arr...)
				} else {
					arr = append(arr, c)
				}
			}
		}
	}

	if reverse {
		arr = Reverse(arr)
	}

	fmt.Println(strings.Join(arr, ""))
}
