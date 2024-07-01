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

func main() {
	sc.Split(bufio.ScanWords)
	l := nextInt()
	r := nextInt()
	num1 := r
	num2 := r
	for i := l; i < r; i++ {
		if i%2019 < num1%2019 {
			num1 = i
		}
	}
	for i := num1 + 1; i < r; i++ {
		if i%2019 < num2%2019 {
			num2 = i
		}
	}
	fmt.Println(num1 * num2 % 2019)
}
