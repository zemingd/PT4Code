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
	in := strings.Split(nextLine(), "")
	ans := make([]byte, 0, len(in)/2+1)
	for i, s := range in {
		if i%2 == 0 {
			ans = append(ans, s...)
		}
	}
	fmt.Println(string(ans))
}
