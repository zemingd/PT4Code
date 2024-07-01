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

	for i, v := range s {
		cube[i], _ = strconv.Atoi(string(v))
	}
	for {
		flag := false
		for i := 0; i < len(cube)-1; i++ {
			if cube[i] != cube[i+1] {
				cube = append(cube[:i], cube[i+2:]...)
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
