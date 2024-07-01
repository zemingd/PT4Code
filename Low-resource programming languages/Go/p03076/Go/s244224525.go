package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func firstDigit(x int) int {
	str := strconv.Itoa(x)
	i, _ := strconv.Atoi(str[len(str)-1 : len(str)])
	return i
}

func minFirstDigit(ints []int) int {
	res := 0
	t := 10
	for _, n := range ints {
		x := firstDigit(n)
		if x == 0 {
			continue
		}
		if x < t {
			t = x
			res = n
		}
	}
	if res == 0 {
		return ints[0]
	}
	return res
}

func roundUp(i int) int {
	fd := firstDigit(i)
	if fd == 0 {
		return i
	}
	return i + (10 - fd)
}

func main() {
	sc := bufio.NewScanner(os.Stdin)

	var ints []int
	for i := 0; i < 5; i++ {
		line := readLine(sc)
		n, _ := strconv.Atoi(line)
		ints = append(ints, n)
	}

	flg := false
	min := minFirstDigit(ints)
	res := 0
	for _, n := range ints {
		if n == min && !flg {
			flg = true
			continue
		}
		res += roundUp(n)
	}
	res += min

	fmt.Println(res)
}
