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
	// sw := strings.Repeat(s, 2)
	// fmt.Println(sw)
	ss := strings.Split(s, "")
	var p string
	var count int
	// var j int
	var j = 1
	var f bool
	var fs string
	var a = 1
	var sentoFlag bool
	for i, c := range ss {
		if c == p && i != 0 && f == false {
			count++
			f = true
			if i == 1 || sentoFlag {
				a++
				sentoFlag = true
			}
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
	// fmt.Println(count)
	// fmt.Println(j)
	if count == 0 {
		fmt.Println(0)
		os.Exit(0)
	}
	// var r int
	if j == 1 {
		fmt.Println(len(s) * k / 2)
		os.Exit(0)
	}
	if s[0:1] == fs {
		rr := (k * count)
		var o = s[len(s)-1]
		var b = 1
		for i := (len(s) - 2); i >= 0; i-- {
			if s[i] == o {
				o = s[i]
				b++
			} else {
				break
			}
		}
		// fmt.Println(a, b)
		fmt.Println(rr - ((a/2)+(b/2)-(a+b)/2)*(k-1))
		// r = (count / 2) / j
		// fmt.Println(k * r)
	} else {
		fmt.Println(k * count)
		// r = count
	}
}

// cooooooooonteeeeeeeeeest
