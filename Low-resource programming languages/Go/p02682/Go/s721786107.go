package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// https://atcoder.jp/contests/abc167/tasks/abc167_b
func main() {
	var lines []string
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan() {
		lines = append(lines, stdin.Text())
	}
	// A B C K (1 0 -1 K枚）の最大をとる
	cards := strings.Split(lines[0], " ")
	one, _ := strconv.Atoi(cards[0])
	zero, _ := strconv.Atoi(cards[1])
	minus, _ := strconv.Atoi(cards[2])
	count, _ := strconv.Atoi(cards[3])
	result := 0;

	for i := 0; i < count; i++ {
		if one > 0 {
			result++
			one--
		} else if zero > 0 {
			zero--
		} else {
			result--
			minus--
		}
	}

	fmt.Println(result)

}
