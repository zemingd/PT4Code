package main

import (
	"fmt"
	"strconv"
)

func main() {
	var k int
	fmt.Scan(&k)

	var cnt int
	for i := 1; ; i++ {
		if runrun(i) {
			cnt++
			if cnt == k {
				fmt.Println(i)
				return
			}
		}
	}
}

func runrun(n int) bool {
	s := strconv.Itoa(n)

	for i := 0; i < len(s)-1; i++ {
		if s[i] != s[i+1] && s[i] != s[i+1]-1 && s[i] != s[i+1]+1 {
			return false
		}
	}
	return true
}
