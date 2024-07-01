package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

// type StringList []string

// func (s StringList) Len() int {
// 	return len(s)
// }

// func (s StringList) Swap(i, j int) {
// 	s[i], s[j] = s[j], s[i]
// }

// func (s StringList) Less(i, j int) bool {
// // ここで渡された Less が使う
// 	return s[i] < s[j]
// }

type StringList []string

func (a StringList) Len() int           { return len(a) }
func (a StringList) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a StringList) Less(i, j int) bool { return a[i] < a[j] }



var sc = bufio.NewScanner(os.Stdin)


func main() {
	var n, l int
	var s StringList = []string{}
	var ans string = "";

	fmt.Scan(&n, &l)
	for i := 0; i < n; i++{
		var inputString string
		fmt.Scan(&inputString)
		s = append(s, inputString)
	}

	sort.Sort(s)

	for  i := 0; i < n; i++ {
		ans += s[i]
	}

	fmt.Printf("%s\n", ans)
}
