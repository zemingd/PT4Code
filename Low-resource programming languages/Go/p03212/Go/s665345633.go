package main

import (
	"fmt"
	"math"
	"strconv"
)

func eval(n int) bool {
	num := strconv.Itoa(n)
	var a, b, c bool = false, false, false
	for i := 0; i < len(num); i++ {
		if num[i] == '3' {
			a = true
		} else if num[i] == '5' {
			b = true
		} else if num[i] == '7' {
			c = true
		}
	}
	return a && b && c
}

func convert(num int, d int) int {
	k := 1
	convertNum := [3]int{3, 5, 7}
	res := 0
	a := num
	for i := 0; i < d; i++ {
		res += convertNum[a%3] * k
		a = a / 3
		k *= 10
	}
	return res
}

func main() {
	var num int
	converted := 0
	count := 0
	fmt.Scan(&num)
	for d := 1; d < 10; d++ {
		im := int(math.Pow(3, float64(d)))
		for i := 0; i < im; i++ {
			converted = convert(i, d)
			if converted > num {
				break
			}
			if eval(converted) {
				count++
			}
		}
	}
	fmt.Println(count)
}