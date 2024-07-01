package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	nl := strings.Split(sc.Text(), " ")
	n, _ := strconv.Atoi(nl[0])
	// l, _ := strconv.Atoi(nl[1])

	var s []string
	for i := 0; i < n; i++ {
		sc.Scan()
		s = append(s, sc.Text())
	}

	sort.Strings(s)

	var result string

	for _, str := range s {
		result += str
	}
	fmt.Println(result)
}
