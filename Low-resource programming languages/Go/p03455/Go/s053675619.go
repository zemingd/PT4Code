package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	stdin := bufio.NewReader(os.Stdin)

	// line, err := stdin.ReadString(byte('\n'))

	num1str, err := stdin.ReadString(byte(' '))
	num1, err := strconv.Atoi(num1str[:len(num1str)-2])
	if err != nil {
		panic(err)
	}
	num2str, err := stdin.ReadString(byte('\n'))
	num2, err := strconv.Atoi(num2str[:len(num1str)-2])
	if err != nil {
		panic(err)
	}
	if ((num1 % 2) * (num2 % 2)) == 1 {
		fmt.Println("Odd")
	} else {
		fmt.Println("Even")
	}
}
