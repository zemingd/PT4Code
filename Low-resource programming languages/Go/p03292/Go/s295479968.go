package main

import (
    "fmt"
	"os"
	"bufio"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func nextLine() string {
    stdin.Scan()
    return stdin.Text()
}

func main() {
	line := nextLine()
	cols := strings.Split(line, " ")
	min, mid, max := 100, 100, 100
	for i, c := range cols {
		n, _ := strconv.Atoi(c)
		if i == 0 {
			min = n
		} else if n < min {
			mid = min
		 	min = n
		} else if n < mid {
			max = mid
		 	mid = n
		} else if n < max {
		 	max = n
		}
	}
	b := max - min
	fmt.Println(max - min)
}