package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {

	numsStr := strings.Split(nextLine(), " ")
	A, _ := strconv.Atoi(numsStr[0])
	B, _ := strconv.Atoi(numsStr[1])
	X, _ := strconv.Atoi(numsStr[2])
	if X >= A && X <= A+B {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}

func nextLine() string {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	return sc.Text()
}
