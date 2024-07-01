package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	s := stdin.Text()
	stringSeq := strings.Split(s, " ")
	floatSeq := convStringSeqToFloatSeq(stringSeq)
	sumResult := sum(floatSeq)
	fmt.Println(1 / sumResult)

}

func convStringSeqToFloatSeq(stringSeq []string) []float64 {
	floatSeq := make([]float64, len(stringSeq))
	for i, v := range stringSeq {
		intValue, _ := strconv.Atoi(string(v))
		floatSeq[i] = 1 / float64(intValue)
	}
	return floatSeq
}

func sum(floatSeq []float64) float64 {
	var result float64
	for _, v := range floatSeq {
		result += v
	}
	return result
}
