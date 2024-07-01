package main

import (
	"fmt"
	"io"
	"os"
)

func main() {
	fmt.Println(resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (s string) {
	fmt.Fscanf(r, "%s", &s)
	return s
}

func resolve(s string) string {
	st := newByteSet(s)
	if st.size() > 1 {
		return "Yes"
	}
	return "No"
}

func newByteSet(input string) byteSet {
	s := newSet()
	for i := 0; i < len(input); i++ {
		s.add(input[i])
	}
	return s
}

type byteSet map[byte]none

func newSet() byteSet {
	return make(map[byte]none)
}

func (s byteSet) add(item byte) {
	s[item] = mark
}

func (s byteSet) doesContain(item byte) bool {
	_, ok := s[item]
	return ok
}

func (s byteSet) size() int {
	return len(s)
}

var mark none

type none struct{}
