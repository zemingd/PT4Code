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

	slice := strings.Split(s, "")

	count := 0
	for i := 1; i < len(slice); i++ {
		if slice[i-1] == slice[i] {
			if slice[i-1] == "0" {
				slice[i] = "1"
			} else {
				slice[i] = "0"
			}
			count++
		}
	}

	// fmt.Println(slice)
	fmt.Println(count)
}
