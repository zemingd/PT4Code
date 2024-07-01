package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	stdin := bufio.NewReader(os.Stdin)

	num1str, err := stdin.ReadString(byte(' '))
	lastDigit1 := num1str[len(num1str)-2]
	if err != nil {
		panic(err)
	}
	num2str, err := stdin.ReadString(byte('\n'))
	lastDigit2 := num2str[len(num2str)-2]
	if err != nil {
		panic(err)
	}
	if ((lastDigit2 % 2) * (lastDigit1 % 2)) == 1 {
		fmt.Println("Odd")
	} else {
		fmt.Println("Even")
	}
}
