package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	str := sc.Text()
	var answer string
	if str[0] == str[1] && str[0] == str[2] {
		answer = "No"
	} else {
		answer = "Yes"
	}
	fmt.Println(answer)
}
