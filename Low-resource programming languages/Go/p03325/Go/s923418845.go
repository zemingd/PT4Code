package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func checkHowManyDivideByTwo(val int) int {
	counter := 0
	for val%2 == 0 {
		val /= 2
		counter++
	}
	return counter
}

func main() {
	var N int
	var s string
	var val int
	var sum int
	var sn []string
	var sc = bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		N, _ = strconv.Atoi(sc.Text())
	}
	if sc.Scan() {
		s = sc.Text()
		sn = strings.Split(s, " ")
		for i := 0; i < N; i++ {
			val, _ = strconv.Atoi(sn[i])
			sum += checkHowManyDivideByTwo(val)
		}

	}
	fmt.Println(sum)
}
