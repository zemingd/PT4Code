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

	for i := 1; i <= 3; i++ {
		if A*B*i%2 == 1 {
			fmt.Println("Yes")
			os.Exit(0)
		}
	}
	fmt.Println("No")
	os.Exit(0)

}
