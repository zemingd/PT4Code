package main

import (
	"fmt"
	"strconv"
)

func main() {
	var dishes = [5]string{}
	fmt.Scan(&dishes[0])
	fmt.Scan(&dishes[1])
	fmt.Scan(&dishes[2])
	fmt.Scan(&dishes[3])
	fmt.Scan(&dishes[4])

	res := 0
	for _, dish := range dishes {
		dishNum, err := strconv.Atoi(dish)
		if err != nil {
			return
		}
		res = res + dishNum
	}

	fmt.Println(strconv.Itoa(res))
	return
}
