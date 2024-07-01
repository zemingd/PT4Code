package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"strings"

	"github.com/mkfsn/aiinside-technical-interview/question-a/solution"
)

func main() {
	reader := bufio.NewReader(os.Stdin)

	S, err := reader.ReadString('\n')
	if err != nil {
		log.Fatalf("err: %s\n", err)
	}
	S = strings.Trim(S, "\n")

	T, err := reader.ReadString('\n')
	if err != nil && err != io.EOF {
		log.Fatalf("err: %s\n", err)
	}
	T = strings.Trim(T, "\n")

	s := solution.New(S, T)
	if err := s.Validate(); err != nil {
		log.Fatalln(err)
	}
	fmt.Printf("%d", s.MinimumCharacters())
}
