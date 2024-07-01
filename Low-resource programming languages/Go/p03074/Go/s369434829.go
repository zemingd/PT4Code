package main

import (
	"fmt"
	"strings"
)

type Status struct {
	val string
	len int
}

func main() {
	n := SingleInt()
	k := SingleInt()
	s := SingleStr()
	ss := strings.Split(s, "")

	if len(ss) == 1 {
		fmt.Printf("%#v\n", 1)
		return
	}

	base := ss[0]
	mans := make([]*Status, 0, n)
	l := 1
	sta := &Status{val: base}
	for i := 1; i < n; i++ {
		if sta.val != ss[i] {
			mans = append(mans, &Status{val: sta.val, len: l})
			sta.val = ss[i]
			l = 1
		} else {
			l++
		}

		if i == n-1 {
			mans = append(mans, &Status{val: sta.val, len: l})
		}
	}

	var re int
	var ml int
	for i := 0; i < k; i++ {
		ml = len(mans)
		var mergeIdx int
		var sum int
		var hit bool
		for idx, sta := range mans {
			if sta.val == "0" {
				hit = true
				prev, next := &Status{len: 0}, &Status{len: 0}
				if idx != 0 {
					prev = mans[idx-1]
				}
				if idx+1 < ml {
					next = mans[idx+1]
				}
				tmp := sta.len + prev.len + next.len
				if sum < tmp {
					sum = tmp
					re = sum
					mergeIdx = idx
				}
			}
		}

		if !hit {
			fmt.Printf("%#v\n", re)
			return
		}

		prev, next := &Status{len: 0}, &Status{len: 0}
		if mergeIdx != 0 {
			prev = mans[mergeIdx-1]
		}
		if mergeIdx+1 < ml {
			next = mans[mergeIdx+1]
		}

		new := &Status{val: "1", len: mans[mergeIdx].len + prev.len + next.len}
		mans[mergeIdx] = new
		if next.len > 0 {
			mans = append(mans[:mergeIdx+1], mans[mergeIdx+1+1:]...)
		}
		if prev.len > 0 {
			mans = append(mans[:mergeIdx-1], mans[mergeIdx-1+1:]...)
		}
	}
	fmt.Printf("%#v\n", re)
}

func reverse(v string) string {
	if v == "0" {
		return "1"
	}
	return "0"
}

func SingleStr() string {
	var s string
	fmt.Scan(&s)
	return s
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}
