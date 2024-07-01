/*
main is for program 2-1 of AOJ
*/
package main

import (
	"fmt"
	"strconv"
)

func calcHour(sec int) (hour, res int) {
	h := sec / (60 * 60)
	r := sec % (60 * 60)
	return h, r
}

func calcMinute(sec int) (minute, res int) {
	m := sec / 60
	r := sec % 60
	return m, r
}

func main() {

	var in string

	fmt.Scan(&in)
	i, _ := strconv.Atoi(in)

	h, res := calcHour(i)
	m, s := calcMinute(res)

	fmt.Printf("%v:%v:%v\n", h, m, s)
}

