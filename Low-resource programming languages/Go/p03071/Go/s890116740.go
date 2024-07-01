package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	s, _ := r.ReadString('\n')
	s = strings.TrimRight(s, " \t\n")
	slice := strings.Split(s, " ")
	a := string(slice[0])
	b := string(slice[1])
	A, _ := strconv.Atoi(a)
	B, _ := strconv.Atoi(b)

	if A > B {
		fmt.Println(A + A - 1)
	} else if A < B {
		fmt.Println(B + B - 1)
	} else {
		fmt.Println(A + B)
	}

}
