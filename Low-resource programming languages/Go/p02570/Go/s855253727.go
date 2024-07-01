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
	l, _ := strconv.Atoi(split[0])
	speed, _ := strconv.Atoi(split[2])
	t, _ := strconv.Atoi(split[1])
	if l/speed <= t {
		fmt.Printf("Yes")
	} else {
		fmt.Printf("No")
	}

}
