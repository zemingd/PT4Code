package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Scan()
	var s1, _ = strconv.Atoi(stdin.Text())
	var hours = int(s1 / (60 * 60))
	var s2 = s1 % (60 * 60)
	var minutes = s2 / 60
	var seconds = s2 % 60
	fmt.Printf("%d:%d:%d\n", hours, minutes, seconds)
}

