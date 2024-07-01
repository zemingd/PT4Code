package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func asInt(s string) []int {
	arr := strings.Split(s, " ")
	is := make([]int, 0, len(arr))
	for _, str := range arr {
		i, _ := strconv.Atoi(str)
		is = append(is, i)
	}
	return is
}

func main() {
	rdx := asInt(nextLine())
	r := rdx[0]
	d := rdx[1]
	x := rdx[2]

	ans := ""
	before := x
	for i := 0; i < 10; i++ {
		next := fn(r, d, before)
		ans += strconv.Itoa(next)
		ans += "\n"
		before = next
	}
	fmt.Printf("%s", ans)
}

func fn(r, d, x int) int {
	return r*x - d
}
