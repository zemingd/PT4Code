package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	i, _ := IntStdin()
	x := IntMultiplier(i)
	fmt.Println(x)
}

//文字列入力
func StrStdin() (stringInput string) {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	stringInput = scanner.Text()

	stringInput = strings.TrimSpace(stringInput)
	return
}

//数値入力
func IntStdin() (int, error) {
	stringInput := StrStdin()
	return strconv.Atoi(strings.TrimSpace(stringInput))
}

func IntMultiplier(i int) int {
	i = i * i * i
	return i
}
