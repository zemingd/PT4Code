package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	var a int

	if sc.Scan() {
		a, _ = strconv.Atoi(sc.Text())
	}

	fmt.Printf("%d:%d:%d\n", a/3600, a%3600/60, a%3600%60)
}

