package main

import (
	"bufio"
	"bytes"
	"io/ioutil"
	"os"
)

func main() {
	stdinBytes, _ := ioutil.ReadAll(os.Stdin)
	scanner := bufio.NewScanner(bytes.NewReader(stdinBytes))
	scanner.Buffer(make([]byte, len(stdinBytes)), len(stdinBytes))
}