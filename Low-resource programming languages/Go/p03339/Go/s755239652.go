package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s []string

	var tmp string
	fmt.Scan(&n, &tmp)
	s = strings.Split(tmp, "")

	var eList, wList []int
	for i, v := range s {
		if i == 0 {
			if v == "E" {
				eList = append(eList, 1)
				wList = append(wList, 0)
			} else {
				eList = append(eList, 0)
				wList = append(wList, 1)
			}
		} else {
			if v == "E" {
				eList = append(eList, eList[i-1]+1)
				wList = append(wList, wList[i-1])
			} else {
				eList = append(eList, eList[i-1])
				wList = append(wList, wList[i-1]+1)
			}
		}
	}

	min := 3 * 100000
	for i := range s {
		var num int
		if i == 0 {
			num = eList[n-1] - eList[i]
		} else {
			num = wList[i-1] + eList[n-1] - eList[i]
		}
		if num < min {
			min = num
		}
	}
	fmt.Println(min)
}
