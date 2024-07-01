package main

import (
	"fmt"
	"strings"
)

func main() {
	s, c := SingleInt(), SingleStr()
	strs := strings.Split(c, "")
	l := len(strs)

	bls := make([]int, 0, s)
	whs := make([]int, 0, s)
	var bl int
	var wh int
	var idx int
	for i := 0; i < l; i++ {
		if strs[i] == "." {
			continue
		}
		if strs[i] == "#" {
			idx = i
			break
		}
	}

	for i := idx; i < l; i++ {
		if strs[i] == "." {
			wh++
			if bl > 0 {
				bls = append(bls, bl)
				bl = 0
			}
		}
		if strs[i] == "#" {
			bl++
			if wh > 0 {
				whs = append(whs, wh)
				wh = 0
			}
		}
	}

	if wh > 0 {
		whs = append(whs, wh)
	}

	if bl > 0 {
		bls = append(bls, bl)
	}

	lwh := len(whs)
	if lwh == 0 {
		fmt.Printf("%#v\n", 0)
		return
	}

	if len(bls) == 0 {
		fmt.Printf("%#v\n", 0)
		return
	}

	co := make([]int, 0, lwh)
	for i := 0; i < lwh; i++ {
		if whs[i] > bls[i] {
			co = append(co, bls[i])
		} else {
			co = append(co, whs[i])
		}
	}

	var re int
	for _, v := range co {
		re += v
	}

	fmt.Printf("%#v\n", re)
}

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
