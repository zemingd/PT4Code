package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func gets() string {
	sc.Scan()
	return sc.Text()
}

func toInt(value string) int {
	num, _ := strconv.Atoi(value)
	return num
}

func splitWithInt(value string) []int {
	vals := strings.Split(value, " ")
	nums := make([]int, len(vals))
	for index, elem := range vals {
		nums[index] = toInt(elem)
	}
	return nums
}

func main() {
	var t int
	in := toInt(gets())
	h := in / 3600
	t = in % 3600
	m := t / 60
	s := t % 60
	fmt.Printf("%v:%v:%v\n", h, m, s)
}

