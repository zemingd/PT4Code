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
	if sc.Scan() {
		a, _ = strconv.Atoi(sc.Text())
	}
	if sc.Scan() {
		b, _ = strconv.Atoi(sc.Text())
	}
	if a*b%2 == 0 {
		fmt.Print("No")
	} else {
		fmt.Print("Yes")
	}
}