package main

import (
	"fmt"
	"strings"
)

func main() {
	s := SingleStr()
	ss := strings.Split(s, "")

	var c int
	var end, didShift bool
	var i int
	for {
		if len(ss) < i+1 {
			i = 0
			continue
		}
		if len(ss) == 1 {
			fmt.Println(c)
			return
		}
		if len(ss) == i+1 {
			fmt.Println(c)
			return
		}
		if doShift(ss, i, i+1) {
			ss[i] = ""
			ss[i+1] = ""
			c += 2
			i = 0
			didShift = true
		}
		i++
		if didShift {
			didShift = false
			i = 0
		}
		b := ss[:0]
		for _, x := range ss {
			if x != "" {
				b = append(b, x)
			}
		}
		ss = b
		end = true
		if cont(ss) {
			end = false
		}
		if end {
			fmt.Println(c)
			return
		}
	}

}

// すべて1
// すべて0
// 1 or 0 で二分されている

func doShift(cubes []string, i, j int) bool {
	if cubes[i] == "0" && cubes[j] == "1" {
		return true
	}
	if cubes[j] == "0" && cubes[i] == "1" {
		return true
	}
	return false
}

func cont(cubes []string) bool {
	if len(cubes) == 0 {
		return false
	}
	var existsZero bool
	var zeroC int
	for _, item := range cubes {
		if item == "0" {
			zeroC++
			existsZero = true
		}
	}

	if existsZero && zeroC == len(cubes) {
		return false
	}

	return true
}

//
//
//

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}

func SingleStr() string {
	var s string
	fmt.Scan(&s)
	return s
}
