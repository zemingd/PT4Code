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

	// judge
	result := "No"
	if sortAsString(a) == sortAsString(b) {
		result = "Yes"
	}

	// output
	fmt.Println(result)
	return
}

func sortAsString(p string) string {
	list := strings.Split(p, "")
	sort.Strings(list)
	return strings.Join(list, "")
}
