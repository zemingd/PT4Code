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
	s := nextLine()
	inputs := strings.Split(s, " ")

	// judge
	result := "No"
	if sortAsString(inputs[0]) == sortAsString(inputs[1]) {
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
