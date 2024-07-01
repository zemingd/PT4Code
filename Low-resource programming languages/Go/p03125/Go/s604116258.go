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
	textSlice := strings.Split(text, " ")
	a, _ := strconv.Atoi(textSlice[0])
	b, _ := strconv.Atoi(textSlice[1])
	if b%a == 0 {
		fmt.Println(a + b)
	} else {
		fmt.Println(b - a)
	}
}
