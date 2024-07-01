package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	ss, _ := reader.ReadString('\n')
	ts, _ := reader.ReadString('\n')
	s := strings.Replace(ss, "\n", "", -1)
	t := strings.Replace(ts, "\n", "", -1)

	if strings.HasPrefix(t, s) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}