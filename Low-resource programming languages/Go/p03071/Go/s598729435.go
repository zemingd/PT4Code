package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text := stdin.Text()
	strs := strings.Split(text, " ")

	A, _ := strconv.Atoi(strs[0])
	B, _ := strconv.Atoi(strs[1])

	ret := max(max(2*A-1, A+B), 2*B-1)
	fmt.Println(ret)

}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
