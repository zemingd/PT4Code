package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	split := strings.Split(s, " ")
	l, _ := strconv.ParseFloat(split[0], 64)
	speed, _ := strconv.ParseFloat(split[2], 64)
	t, _ := strconv.ParseFloat(split[1], 64)
	if l/speed <= t {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}

}
