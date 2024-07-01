package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var s string
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%s", &s)
	chars := strings.Split(s, "")

	var K int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &K)

	set := NewStrSet()
	for i := 0; i < len(chars); i++ {
		for k := 1; k <= K && i+k <= len(chars); k++ {
			str := strings.Join(chars[i:i+k], "")
			set.Add(str)
		}
	}
	//fmt.Println(set.Entries())

	records = make([]Record, set.Size())
	index := 0
	for str, _ := range set.Entries() {
		records[index] = Record{str}
		index++
	}
	sort.Sort(records)
	//fmt.Println(records)
	fmt.Println(records[K-1].str)

}

var records Records

type Record struct {
	str string
}

type Records []Record

func (r Records) Len() int {
	return len(r)
}
func (r Records) Swap(i, j int) {
	r[i], r[j] = r[j], r[i]
}

func (r Records) Less(i, j int) bool {
	return r[i].str < r[j].str
}

type StringSet struct {
	set map[string]struct{}
}

func NewStrSet() *StringSet {
	return &StringSet{
		set: make(map[string]struct{}),
	}
}

func (s *StringSet) Add(str string) {
	s.set[str] = struct{}{}
}

func (s *StringSet) Contains(str string) bool {
	_, e := s.set[str]
	return e
}

func (s *StringSet) Size() int {
	return len(s.set)
}

func (s *StringSet) IsEmpty() bool {
	return s.Size() == 0
}

func (s *StringSet) Entries() map[string]struct{} {
	return s.set
}
