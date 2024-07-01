package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)
var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s1,s2 string
	if sc.Scan() {
        s1 = sc.Text()
    }
    if sc.Scan() {
        s2 = sc.Text()
	}
	nums, _ := strconv.Atoi(s1)
	slice := strings.Split(s2, " ")
	inputNum := stringToint(slice)

	truenums := 0
	min := inputNum[0]
	for i := 0; i < nums; i++ {
		if min >= inputNum[i] {
			min = inputNum[i]
			truenums++
		}
	}
	fmt.Println(truenums)
}

func stringToint(s []string) []int {
	f := make([]int, len(s))
	for n := range s {
		f[n], _ = strconv.Atoi(s[n])
	}
	return f
}
