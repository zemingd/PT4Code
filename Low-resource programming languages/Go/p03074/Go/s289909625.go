package main

import (
	"fmt"
	"math"
)

type Status struct {
	val string
	len int
}

func main() {
	n := SingleInt()
	k := SingleInt()
	s := SingleStr()
	ss := make([]int, 0, n)

	now := "1"
	cnt := 0
	for i := 0; i < n; i++ {
		if string(s[i]) == now {
			cnt++
		} else {
			ss = append(ss, cnt)
			now = reverse(now)
			cnt = 1
		}
	}
	if cnt != 0 {
		ss = append(ss, cnt)
	}
	if len(ss)%2 == 0 {
		ss = append(ss, 0)
	}

	// fmt.Printf("%#v\n", ss)

	add := 2*k + 1
	ans := 0

	tmp := 0 // [left, right)のsum ([left, right) leftは含むがrightは含まない)

	sslen := len(ss)

	accumSums := make([]int, sslen+1, sslen+1)
	for i := 0; i < sslen; i++ {
		accumSums[i+1] = accumSums[i] + ss[i]
	}

	// fmt.Printf("%#v\n", accumSums)

	for i := 0; i < sslen; i += 2 {
		left := i
		right := Min(i+add, sslen)

		tmp = accumSums[right] - accumSums[left]

		// fmt.Printf("right %#v, left %#v\n", right, left)
		// fmt.Printf("tmp %#v\n\n", tmp)

		ans = Max(tmp, ans)
	}
	fmt.Printf("%#v\n", ans)
}

func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("function max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func Min(nums ...int) int {
	if len(nums) == 0 {
		panic("function min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
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
