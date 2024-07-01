	package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
	"math"
)

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
	var answer int
	n = numbers[0]
	a = numbers[1]
	b = numbers[2]
	var amari, shou int
	shou = n / (a + b)
	amari = n % (a + b)
	answer = (shou * a) + int(math.Min(float64(amari), float64(a)))
	fmt.Println(answer)
}
