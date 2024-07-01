package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	// fmt.Println(8999939997 / 999993333)
	var s string
	var k int
	fmt.Scan(&s, &k)
	ss := strings.Split(s, "")
	var p string
	var count int
	// var j int
	var j int
	var f bool
	var fs string
	for i, c := range ss {
		if c == p && i != 0 {
			count++
			f = true
		} else {
			if f {
				j++
			}
			f = false
		}
		p = c
		if len(s)-1 == i {
			fs = c
		}
	}
	// fmt.Println(fs)
	// fmt.Println(count, j)
	if count == 0 {
		fmt.Println(0)
		os.Exit(0)
	}
	var r int
	if j == 0 {
		fmt.Println(k * count)
		os.Exit(0)
	}
	if s[0:1] == fs {
		r = count / j
	} else {
		r = count / j + 1
	}
	fmt.Println(k * r)
}

// cooooooooonteeeeeeeeeest
