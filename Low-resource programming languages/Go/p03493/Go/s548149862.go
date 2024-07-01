package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var input string
	_, err := fmt.Scan(&input)
	if err != nil {
		panic(err)
	}
	var cnt = 0
	for _, s := range strings.Split(input, "") {
		i, err := strconv.Atoi(s)
		if err != nil {
			panic(err)
		}
		cnt += i
	}
	fmt.Println(cnt)
}
