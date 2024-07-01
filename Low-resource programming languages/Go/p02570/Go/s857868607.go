package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)

	sc.Scan()
	a := strings.Split(sc.Text(), " ")
	D, _ := strconv.Atoi(a[0])
	T, _ := strconv.Atoi(a[1])
	S, _ := strconv.Atoi(a[2])

	if S*T >= D {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
