package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	inputList, _ := toIntArray(splitInput(scanner, " "))
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetInt64(int64(inputList[0]))
	b := new(big.Int).SetInt64(int64(inputList[1]))

	gcd := z.GCD(x, y, a, b)

	fmt.Println(z.Mul(z.Div(a, gcd), b))
}

func splitInput(scanner *bufio.Scanner, sep string) []string {
	scanner.Scan()
	return strings.Split(scanner.Text(), sep)
}

func toIntArray(str []string) ([]int, error) {
	length := len(str)
	resVal := make([]int, length)
	var err error
	for i := 0; i < length; i++ {
		resVal[i], err = strconv.Atoi(str[i])
		if err != nil {
			return nil, err
		}
	}
	return resVal, nil
}
