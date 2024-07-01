package main

import (
	"fmt"
	"math"
)

type (
	In struct {
		index int
		value int
	}
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	in := []In{}
	for i := 0; i < m; i++ {
		ind := 0
		val := 0
		fmt.Scan(&ind, &val)
		if ind == 1 && val == 0 {
			fmt.Println(-1)
			return
		}
		in = append(in, In{
			index: ind,
			value: val,
		})
	}

	ans := []In{}
	for i := 0; i < m; i++ {
		if !notIn(in[i].index, in[i].value, ans) {
			fmt.Println(-1)
			return
		}
		if !iin(in[i].index, in[i].value, ans) {
			ans = append(ans, in[i])
		}
	}

	fmt.Println(calc(n, ans))
}

func calc(n int, in []In) int {
	ans := 0
	for _, v := range in {
		ans += int(math.Pow(10, float64(n-v.index)) * float64(v.value))
	}
	return ans
}

func notIn(ind, val int, ans []In) bool {
	for _, v := range ans {
		if v.index == ind && v.value != val {
			return false
		}
	}
	return true
}

func iin(ind, val int, ans []In) bool {
	for _, v := range ans {
		if v.index == ind && v.value == val {
			return true
		}
	}
	return false
}