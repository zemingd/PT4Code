package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var N int
	var A, B, C []int

	fmt.Scanf("%d", &N)

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text := stdin.Text()
	a := strings.Split(text, " ")
	for _, v := range a {
		fig, _ := strconv.Atoi(v)
		A = append(A, fig)
	}

	stdin = bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text = stdin.Text()
	b := strings.Split(text, " ")
	for _, v := range b {
		fig, _ := strconv.Atoi(v)
		B = append(B, fig)
	}

	stdin = bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text = stdin.Text()
	c := strings.Split(text, " ")
	for _, v := range c {
		fig, _ := strconv.Atoi(v)
		C = append(C, fig)
	}

	var satisfaction int

	for _, v := range B {
		satisfaction += v
	}

	for _, v := range C {
		satisfaction += v
	}

	fmt.Println(satisfaction)

}
