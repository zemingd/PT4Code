package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	in := sc.Text()

	sec, _ := strconv.Atoi(in)
	hour := sec / 3600
	min := sec % 3600 / 60
	sec = sec % 3600 % 60
	fmt.Printf("%v:%v:%v\n", hour, min, sec)
}

