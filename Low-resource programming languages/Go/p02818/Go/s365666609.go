package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text := stdin.Text()
	inputtext := strings.Split(text, " ")

	a, _ := strconv.Atoi(inputtext[0])
	b, _ := strconv.Atoi(inputtext[1])
	k, _ := strconv.Atoi(inputtext[2])
	takahashi := a - k
	aoki := b
	if takahashi < 0 {
		aoki = b + takahashi
		takahashi = 0
	} else if aoki < 0 {
		aoki = 0
	}
	if aoki < 0 {
		aoki = 0
	}
	fmt.Println(strconv.Itoa(takahashi) + " " + strconv.Itoa(aoki))

}
