// Package main provides
//
// File:  c.go
// Author: ymiyamoto
//
// Created on Sat Jan  5 17:10:08 2019
//
package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	nums := [4]int{int(s[0] - '0'), int(s[1] - '0'), int(s[2] - '0'), int(s[3] - '0')}
	for i := 0; i < (1 << 3); i++ {
		ans := nums[0]
		ops := []string{}
		for j := uint8(0); j < 3; j++ {
			if i&(1<<j) != 0 {
				ans += nums[j+1]
				ops = append(ops, "+")
			} else {
				ans -= nums[j+1]
				ops = append(ops, "-")
			}
		}
		if ans == 7 {
			fmt.Printf("%d%s%d%s%d%s%d=7\n", nums[0], ops[0], nums[1], ops[1], nums[2], ops[2], nums[3])
			return
		}
	}
}
