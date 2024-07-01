package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	tmp, _ := reader.ReadString('\n')
	tmp = strings.Trim(tmp, "\n")

	// case 1
	if !check(tmp) {
		fmt.Println("No")
		return
	}

	// case 2
	pos := (len(tmp) - 1) / 2
	tmp2 := tmp[0:pos]
	if !check(tmp2) {
		fmt.Println("No")
		return
	}

	// case 3
	pos = (len(tmp)+3)/2 - 1
	tmp3 := tmp[pos:len(tmp)]
	if !check(tmp3) {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")
	return
}

func check(sen string) bool {
	length := len(sen)

	flag := true

	mid := length / 2

	for i := 0; i < mid; i++ {
		if sen[i] != sen[length-i-1] {
			flag = false
			break
		}
	}

	return flag
}
