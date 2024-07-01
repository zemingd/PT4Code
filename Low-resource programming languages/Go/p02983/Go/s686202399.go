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
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	l, _ := strconv.Atoi(numString[0])
	r, _ := strconv.Atoi(numString[1])

	var flg bool
	var rem, min int
	var count int
	for i := l; i < r; i++ {
		if i%2019 == 0 {
			min = 0
			break
		}
		for j := i + 1; j <= r; j++ {
			if flg == false {
				min = i * j
				flg = true
			}
			rem = (i * j) % 2019
			if rem < min {
				min = rem
			}
			count++
			if count > 2019 {
				count = 0
				break
			}
		}
	}
	fmt.Println(min)
}