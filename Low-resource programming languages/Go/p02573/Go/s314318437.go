package main

import (
	"bufio"
	"io/ioutil"
	"os"
	"testing"
)

func TestAnswer(t *testing.T) {
	inbuf := readFile("./test.txt")
	stubStdin(inbuf, func() {
		main()
	})
}

func readFile(fileName string) string {
	bytes, err := ioutil.ReadFile(fileName)
	if err != nil {
		panic(err)
	}

	return string(bytes)
}

// Stubs Stdin in 'fn'
func stubStdin(inbuf string, fn func()) {
	inr, inw, _ := os.Pipe()
	inw.Write([]byte(inbuf))
	inw.Close()
	os.Stdin = inr
	io.scanner = bufio.NewScanner(os.Stdin)
	fn()
}
