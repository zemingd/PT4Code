package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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
	var sc = bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		N, _ = strconv.Atoi(sc.Text())
	}

	for i := 0; i < N; i++ {
		sc.Scan()
		s = sc.Text()
		val, _ = strconv.Atoi(s)
		sum += checkHowManyDivideByTwo(val)
	}

	fmt.Println(sum)
}
