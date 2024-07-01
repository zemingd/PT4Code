package main

import (
	"fmt"
)

func keta(x int) []int {
	keta := 0
	y := x
	if x == 0 {
		keta = 1
	} else {
		for x != 0 {
			x = x / 10
			keta++
		}
	}
	listNum := make([]int, keta)
	for i := keta - 1; i >= 0; i-- {
		listNum[i] = y % 10
		y = y / 10
	}
	return listNum
}
func main() {
	var n, m int
	fmt.Scan(&n, &m)
	listS := make([]int, m)
	listC := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&listS[i], &listC[i])
	}
	ans := -1
	start := 0
	end := 10
	if n == 2 {
		start = 10
		end = 100
	} else if n == 3 {
		start = 100
		end = 1000
	}
	for i := start; i < end; i++ {
		flag := false
		listNum := keta(i)
		for j := 0; j < m; j++ {
			if listNum[listS[j]-1] == listC[j] {
				flag = true
			} else {
				flag = false
				break
			}
		}
		if flag == true {
			fmt.Println(i)
			return
		}
	}
	fmt.Println(ans)
}
