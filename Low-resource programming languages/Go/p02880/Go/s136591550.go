package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	input := scanner.Text()
	inputList := strings.Split(input, " ")
	n, _ := strconv.Atoi(inputList[0])

	isKuku := false
	for i := 1; i < 10; i++ {
		if n%i == 0 && 1 <= n/i && n/i <= 9 {
			isKuku = true
			break
		}
	}
	if isKuku {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
