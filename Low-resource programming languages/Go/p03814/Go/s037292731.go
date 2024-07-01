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
	var s string
	fmt.Scan(&s)

	firstPos := -1
	lastPos := -1

	slice := strings.Split(s, "")

	// max := -1

	// for i := 0; i < len(slice)-1; i++ {
	// 	if slice[i] == "A" {
	// 		for j := i + 1; j < len(slice); j++ {
	// 			if slice[j] == "Z" {
	// 				if max < len(slice[i:j+1]) {
	// 					max = len(slice[i : j+1])
	// 				}
	// 			}
	// 		}
	// 	}
	// }

	for i := 0; i < len(slice); i++ {
		if slice[i] == "A" {
			firstPos = i
			break
		}
	}

	for j := len(slice) - 1; j >= 0; j-- {
		if slice[j] == "Z" {
			lastPos = j
			break
		}
	}

	fmt.Println(lastPos - firstPos + 1)
}
