package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	oneHour   = 60 * 60
	oneMinute = 60
)

func main() {
	input, err := scanInt()
	if err != nil {
		panic(err)
	}

	hour := (input / oneHour)
	minute := (input % oneHour) / oneMinute
	second := (input % oneMinute)

	fmt.Printf("%d:%d:%d\n", hour, minute, second)
}

func scanInt() (int, error) {
	scan := bufio.NewScanner(os.Stdin)
	scan.Scan()
	return strconv.Atoi(scan.Text())
}

