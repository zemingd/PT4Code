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
	ab := asInt(nextLine())
	a := ab[0]
	if a >= 13 {
		fmt.Println(ab[1])
	} else if a <= 5 {
		fmt.Println("0")
	} else {
		fmt.Println(ab[1] / 2)
	}
}
