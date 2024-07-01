package main

import (
	"fmt"
)

type (
	Aisle []int
)

func main() {
	var n, k, temp int
	fmt.Scan(&n, &k)
	a := make(map[int]int, n)
	for i := 1; i <= n; i++ {
		fmt.Scan(&temp)
		a[i] = temp
	}

	//ans := 1
	//for i := 1; i <= k; i++ {
	//	ans = a[ans]
	//}
	temp = 1
	ai := Aisle{1}
	var rnum int
	var hoge int
	for j := 0; j < n; j++ {
		temp = a[temp]
		if ai.include(temp) {
			for k, v := range ai {
				if v == temp {
					rnum = len(ai) - k
					hoge = k
					goto A
				}
			}
		} else {
			ai = append(ai, temp)
		}
	}
A:
	ans := 1
	k -= hoge
	ansTemp := k % rnum
	ans = ai[hoge+ansTemp]
	fmt.Println(ans)

}

func (a Aisle) include(n int) bool {
	for i := 0; i < len(a); i++ {
		if n == a[i] {
			return true
		}
	}
	return false
}