package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var a, b int
	r := "No"
	if sc.Scan() {
		a, _ = strconv.Atoi(sc.Text())
	}
	if sc.Scan() {
		b, _ = strconv.Atoi(sc.Text())
	}
	for c := 1; c <= 3; c++ {
		tmp := a * b * c
		if (tmp % 2) == 1 {
			r = "Yes"
			break
		}
	}
	fmt.Println(r)
}
