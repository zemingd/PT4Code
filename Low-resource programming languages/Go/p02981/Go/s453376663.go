package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Scan()
	inslice := strings.Split(stdin.Text(), " ")
	N, _ := strconv.Atoi(inslice[0])
	A, _ := strconv.Atoi(inslice[1])
	B, _ := strconv.Atoi(inslice[2])
	if N*A > B {
		fmt.Println(B)
		return
	}
	fmt.Println(N * A)

}