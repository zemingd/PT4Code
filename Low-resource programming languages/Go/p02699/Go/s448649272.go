package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func IsSafety(s int, w int) string {
	var isSafe string
	if w >= s {
		isSafe = "unsafe"
	} else {
		isSafe = "safe"
	}
	return isSafe
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	args := strings.Split(stdin.Text(), " ")
	s, _ := strconv.Atoi(args[0])
	w, _ := strconv.Atoi(args[1])
	isSafe := IsSafety(s, w)
	fmt.Println(isSafe)
}
