package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	nl := strings.Split(nextLine(), " ")
	n, _ := strconv.Atoi(nl[0])
	var s []string
	for i := 0; i < n; i++ {
		s = append(s, nextLine())
	}
	sort.Sort(sort.StringSlice(s))

	ret := ""
	for _, s := range s {
		ret += s
	}

	fmt.Println(ret)
}
