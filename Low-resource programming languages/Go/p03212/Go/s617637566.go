package main

import (
	"fmt"
	"math"
	"strconv"
)

func eval(n int) bool {
	num := strconv.Itoa(n)
	var a, b, c, d bool = false, false, false, true
	for i := 0; i < len(num); i++ {
		if num[i] == '3' {
			a = true
		} else if num[i] == '5' {
			b = true
		} else if num[i] == '7' {
			c = true
		} else {
			d = false
		}
	}
	return a && b && c && d
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
	d := 1
	fmt.Scan(&num)
	for i := 0; converted < num-1; i++ {
		if i == int(math.Pow(3, float64(d))) {
			d++
			i = 0
		}
		converted = convert(i, d)
		if eval(converted) {
			count++
		}
	}
	fmt.Println(count)
}
