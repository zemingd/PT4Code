package main

import (
	"fmt"
	"strconv"
	"strings"
)

func emp(nums [3]int) (age string) {
	switch {
	case nums[0] <= 2018:
		age = "Heisei"
	case nums[0] <= 2019 && nums[1] <= 4:
		age = "Heisei"
	case nums[0] >= 2019 && nums[1] >= 5:
		age = "TBD"
	}
	return
}

func main() {
	var s string
	fmt.Scan(&s)
	var nums [3]int
	for i, x := range strings.Split(s, "/") {
		nums[i], _ = strconv.Atoi(x)
	}
	fmt.Println(emp(nums))
}
