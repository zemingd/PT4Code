package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	s := strings.Split(nextLine(), "")

	min := n

	for i := 0; i < n; i++ {
		count := 0
		for j := 0; j < n; j++ {
			if i == j {
				continue
			}

			if i < j && s[j] == "E" {
				count++
			} else if i > j && s[j] == "W" {
				count++
			}

		}

		if min > count {
			min = count
		}
	}

	fmt.Println(min)
}
