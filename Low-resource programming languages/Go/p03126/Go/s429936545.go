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

func allAtoi(num []string) []int {
	conv := make([]int, len(num))
	for i, item := range num {
		conv[i], _ = strconv.Atoi(item)
	}
	return conv
}

func main() {
	nm := allAtoi(strings.Split(nextLine(), " "))
	n := nm[0]
	m := nm[1]
	foods := map[int]int{}
	for i := 1; i <= m; i++ {
		foods[i] = 0
	}
	for i := 0; i < n; i++ {
		input := allAtoi(strings.Split(nextLine(), " "))
		for j := 1; j <= input[0]; j++ {
			num := input[j]
			foods[num]++
		}
	}
	ans := 0
	for _, v := range foods {
		if v == n {
			ans++
		}
	}
	fmt.Println(ans)
}
