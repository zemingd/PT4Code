package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func gets() string {
	sc.Scan()
	return sc.Text()
}

func toInt(value string) int {
	num, _ := strconv.Atoi(value)
	return num
}

func main() {
	s := strings.Split(gets(), "/")
	days := make([]int, len(s))
	for index, elem := range s {
		days[index] = toInt(elem)
	}

	y, m := days[0], days[1]

	if y < 2019 {
		fmt.Println("Heisei")
	} else if m < 5 {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
