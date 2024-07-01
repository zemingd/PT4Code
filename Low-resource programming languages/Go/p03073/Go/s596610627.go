package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner *bufio.Scanner

func nextInt() int {
	scanner.Scan()

	var i, _ = strconv.Atoi(scanner.Text())

	return i
}

func nextString() string {
	scanner.Scan()

	return scanner.Text()
}

func initScanner() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

func main() {
	initScanner()

	var s = nextString()
	var oddDiff = calcDiff([]rune(s), odd(len(s)))
	var evenDiff = calcDiff([]rune(s), even(len(s)))

	if oddDiff < evenDiff {
		fmt.Println(oddDiff)
	} else {
		fmt.Println(evenDiff)
	}

}

func calcDiff(target []rune, test []rune) int {
	var sum = 0

	for i := 0; i < len(target); i++ {
		if target[i] != test[i] {
			sum++
		}
	}

	return sum
}

func parseAsBit(src string) int64 {
	var sum float64
	for i := 0; i < len(src); i++ {
		if src[i] == '1' {
			sum += math.Pow(float64(2), float64(i))
		}
	}

	return int64(sum)
}

func odd(length int) []rune {
	var ret = make([]rune, length)
	for i := 0; i < length; i++ {
		if i%2 == 0 {
			ret[i] = '0'
		} else {
			ret[i] = '1'
		}
	}

	return ret
}

func even(length int) []rune {
	var ret = make([]rune, length)
	for i := 0; i < length; i++ {
		if i%2 == 0 {
			ret[i] = '1'
		} else {
			ret[i] = '0'
		}
	}

	return ret
}
