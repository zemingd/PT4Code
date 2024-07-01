package main

import (
	"fmt"
	"strconv"
)

func main() {

	var s string
	count := 0

	fmt.Scan(&s)
	cube := make([]int, len(s))
	index := make([]int, len(s))
	for i, v := range s {
		cube[i], _ = strconv.Atoi(string(v))
	}
	for {
		flag := false
		j := 0
		for i := 0; i < len(cube)-1; i++ {
			if index[i] == 1 {
				continue
			}
			for j = i + 1; i < len(cube); j++ {
				if index[j] == 0 {
					break
				}
			}
			if cube[i] != cube[j] {
				index[i], index[j] = 1, 1
				count++
				flag = true
				break
			}
		}
		if !flag {
			break
		}
	}
	fmt.Println(count * 2)

}
