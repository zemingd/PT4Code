package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func splitElement() []int {
	var list []int
	sc.Scan()
	for _, v := range strings.Split(sc.Text(), " ") {
		num, _ := strconv.Atoi(v)
		list = append(list, num)
	}
	return list
}

func main() {
	A := splitElement()
	if A[0] == A[1] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
