package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	input := scanIntNum()
	if input%2 == 0 {
		fmt.Println(input / 2)
	} else {
		fmt.Println(input/2 + 1)
	}
}

func scanIntNum() (num int) {
	sc.Scan()

	num, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return num
}
