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

func main() {
	a := nextLine()
	arr := strings.Split(a, " ")
	x, _ := strconv.Atoi(arr[0])
	y, _ := strconv.Atoi(arr[1])

	num := 4*x - y
	if num > 0 && num%2 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
