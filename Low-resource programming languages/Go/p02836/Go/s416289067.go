package main

import (
	"bufio"
	"fmt"
	"os"
)

// 回文: 上から読んでも下から読んでも同じ言葉になる文句
func main() {
	count := 0
	stdin := bufio.NewScanner(os.Stdin)
	for stdin.Scan(){
		text := stdin.Text()
		n1, n2 := Split(text)
		if n1 == Reverse(n2) {
			fmt.Println(0)
			break
		}
		n1Rune := []rune(n1)
		//fmt.Println(n1Rune)
		n2ReversedRune := []rune(Reverse(n2))
		//fmt.Println(n2ReversedRune)
		for i:=0;i<len(n1);i++ {
			if n1Rune[i] != n2ReversedRune[i] {
				count = count + 1
			}
		}
		fmt.Println(count)
	}
}

func Reverse(input string) string {
	inputRune := []rune(input)
	reverse := ""
	for i:=len(inputRune)-1;i>=0;i-- {
		reverse = reverse + string(inputRune[i])
	}
	return reverse
}

func Split(input string) (n1 string, n2 string) {
	inputRune := []rune(input)
	inputLength := len(inputRune)
	halfLength := inputLength/2
	if len(inputRune)%2 == 0 {
		n1 = string(inputRune[:halfLength])
		n2 = string(inputRune[halfLength:])
	} else {
		n1 = string(inputRune[:halfLength])
		n2 = string(inputRune[halfLength:])
	}
	return
}

type PalindromePhilia interface {
	Reverse(input string) string
	Split(input string) string
}