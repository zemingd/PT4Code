package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

type str []byte

func (s str) Len() int           { return len(s) }
func (s str) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s str) Less(i, j int) bool { return s[i] < s[j] }
func (s str) String() string     { return string(s) }

func main() {
	r := bufio.NewReader(os.Stdin)
	var s, t string
	fmt.Fscan(r, &s)
	fmt.Fscan(r, &t)

	sd := str(s[:])
	td := str(t[:])
	sort.Sort(sd)
	sort.Sort(sort.Reverse(td))

	if sd.String() < td.String() {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
