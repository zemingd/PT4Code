package main

import (
	"fmt"
	"strings"
	"strconv"
)

func main() {
	var sunuke, okashi int
	fmt.Scanf("%d %d", &sunuke, &okashi)
	sunuke_arr := make([] bool, sunuke)

	for i := 0; i < okashi; i++ {
		var okashi_num int
		fmt.Scanf("%d", &okashi_num)
		var sunuke_info string
		fmt.Scanf("%s", &sunuke_info)
		slice := strings.Split(sunuke_info, " ")
		for _, str := range slice {
			var sint int
			sint, _ = strconv.Atoi(str)
			sunuke_arr[sint - 1] = true
		}
	}

	var counter = 0

	for _, sunu := range sunuke_arr {
		if sunu {
			counter++
		}
	}

	fmt.Printf("%d\n" ,counter)
}
