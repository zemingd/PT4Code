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
	var headTmp = nextLine()
	var head = strings.Split(headTmp, " ")

	// fmt.Println(head[0])
	// fmt.Println(head[1])
	n0, _ := strconv.Atoi(head[0])
	n1, _ := strconv.Atoi(head[1])

	var i int
	var m string

	if head[0] > head[1] {
		for i = 0; i < n0; i++ {
			m = m + head[1]
		}
		fmt.Println(m)

	} else {
		for i = 0; i < n1; i++ {
			m = m + head[0]
		}
		fmt.Println(m)

	}
}
