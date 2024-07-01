package main

import (
	"bufio"
	"os"
	"strings"
	"sort"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	// get stg input
	a := nextLine()
	b := nextLine()

	// already same value
	if a == b {
		fmt.Println("Yes")
		return
	}
	// never be same because they contain different characters
	if sortAsString(a) != sortAsString(b) {
		fmt.Println("No")
		return
	}
	// try
	size := len(a)
	for i := 0; i < size; i ++ {
		b = b[size-1:size] + b[0:size-1]
		if a == b {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
	return
}

func sortAsString(p string) string {
	list := strings.Split(p, "")
	sort.Strings(list)
	return strings.Join(list, "")
}
