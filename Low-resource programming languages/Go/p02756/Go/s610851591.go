package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)
var result string

func main() {
	result = next()
	numOfQ, err := strconv.ParseInt(next(), 10, 64)
	if err != nil {
		panic(err)
	}
	for numOfQ > 0 {
		numOfQ--
		slice := strings.Split(next(), " ")
		if slice[0] == "1" {
			result = reverse(result)
			continue
		}
		if slice[1] == "1" {
			result = slice[2] + result
		} else {
			result = result + slice[2]
		}
	}

	fmt.Print(result)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func reverse(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}