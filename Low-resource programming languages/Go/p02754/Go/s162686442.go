package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
)

func min(x int, y int) int {
	if x > y {
		return y
  }
  return x
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	var line string
	line = stdin.Text()
	var numbers []int
	for _, s := range strings.Split(line, " ") {
		var i int
		var _ error
		i, _ = strconv.Atoi(s)
		numbers = append(numbers, i)
	}
	var n, a, b int
	n = numbers[0]
	a = numbers[1]
	b = numbers[2]
	var answer int
	var amari, shou int
	shou = n / (a + b)
	amari = n % (a + b)
	answer = (shou * a) + min(amari, a)
	fmt.Println(answer)
}
