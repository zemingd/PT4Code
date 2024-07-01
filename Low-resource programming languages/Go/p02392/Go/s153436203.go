
package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func stringsToInts(s, sep string) []int {
	ss := strings.Split(s, sep)
	ints := make([]int, 0)
	for _, c := range ss {
		i, err := strconv.Atoi(c)
		if err != nil {
			continue
		}
		ints = append(ints, i)
	}
	return ints
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		line := scanner.Text()
		ints := stringsToInts(line, " ")
		a, b, c := ints[0], ints[1], ints[2]
		switch {
		case a < b && b < c:
			fmt.Println("Yes")
		default:
			fmt.Println("No")
		}
	}

	if err := scanner.Err(); err != nil {
		// log.Println(err)
		return
	}
}

