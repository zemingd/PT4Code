package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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

	// firstPos := -1
	// lastPos := -1

	max := -1

	for i := 0; i < len(s)-1; i++ {
		if string(s[i]) == "A" {
			for j := i + 1; j < len(s); j++ {
				if string(s[j]) == "Z" {
					if max < len(s[i:j+1]) {
						max = len(s[i : j+1])
					}
				}
			}
		}
	}

	fmt.Println(max)
}
