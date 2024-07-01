package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	N, K int
	avg  []float64
)

func readVariables() {
	N, K = nextInt(), nextInt()
	avg = make([]float64, N)
	for i := 0; i < N; i++ {
		avg[i] = calcAvg(nextInt())
	}
}

func calcAvg(x int) float64 {
	return float64(x+1) / 2
}

func main() {
	readVariables()
	var answer float64
	//init sum
	for i := 0; i < K; i++ {
		answer += avg[i]
	}
	current := answer
	for i := 0; i+K < N; i++ {
		current -= avg[i]
		current += avg[i+K]
		answer = math.Max(answer, current)
	}
	fmt.Println(answer)
}

/* 以下、テンプレート*/

var scanner *bufio.Scanner

func init() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

//nextInt converts next token from stdin and returns integer value.
//nextInt panics when conversion into an integer fails.
func nextInt() int {
	if !scanner.Scan() {
		panic("No more token.")
	}
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic("nextInt(): cannot convert to int: " + scanner.Text())
	}
	return num
}

func nextStr() string {
	if !scanner.Scan() {
		panic("No more token.")
	}
	return scanner.Text()
}
