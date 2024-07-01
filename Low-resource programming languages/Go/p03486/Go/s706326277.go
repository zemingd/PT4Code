package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

type Strings []string

func (s Strings) Len() int {
	return len(s)
}
func (s Strings) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

type Down struct {
	Strings
}

type Up struct {
	Strings
}

func (s Down) Less(i, j int) bool {
	return s.Strings[i] < s.Strings[j]
}
func (s Up) Less(i, j int) bool {
	return s.Strings[i] > s.Strings[j]
}

func (s Strings) Join() string {
	return strings.Join(s, "")
}

func main() {
	line := nextLine()
	s := Strings(strings.Split(line, ""))
	sort.Sort(Down{s})

	line = nextLine()
	t := Strings(strings.Split(line, ""))
	sort.Sort(Up{t})

	sout := s.Join()
	tout := t.Join()


	if sout < tout {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
