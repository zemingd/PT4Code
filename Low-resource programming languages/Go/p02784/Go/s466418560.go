package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	H, N, sum int
	a         []int
	line      string
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	line = scanner.Text()
	values := strings.Split(line, " ")
	H, _ = strconv.Atoi(values[0])
	N, _ = strconv.Atoi(values[1])
	a = make([]int, N)
	scanner.Scan()
	line = scanner.Text()
	values = strings.Split(line, " ")
	for i := 0; i < N; i++ {
		a[i], _ = strconv.Atoi(values[i])
	}
	for _, v := range a {
		sum += v
	}
	if H > sum {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}