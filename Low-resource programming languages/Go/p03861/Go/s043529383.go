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
	sc.Scan()
	line := sc.Text()
	numbers := strings.Split(line, " ")
	a, _ := strconv.ParseUint(numbers[0], 10, 64)
	b, _ := strconv.ParseUint(numbers[1], 10, 64)
	x, _ := strconv.ParseUint(numbers[2], 10, 64)
	resultCount := 0
	for i := a; i < b; i++ {
		if i%x == 0 {
			resultCount++
		}
	}
	fmt.Println(resultCount)
}
