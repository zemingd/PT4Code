package main

import (
	"fmt"
)

func Solve(s string) int {
	results := []int{0, 0}
	for i, pat := range [][]byte{{'#', '.'}, {'.', '#'}} {
		arr := []byte(s)
		c, d := pat[0], pat[1]
		for j := 0; j < len(arr); j++ {
			if k := j + 1; arr[j] == c && k < len(arr) && arr[k] == d {
				arr[k] = c
				results[i]++
			}
		}
	}
	if results[0] < results[1] {
		return results[0]
	}
	return results[1]
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	var s string
	fmt.Scanf("%s", &s)
	result := Solve(s)
	fmt.Println(result)
}
