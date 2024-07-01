package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	s := sc.Bytes()

	i := len(s)
	for i >= 5 {
		switch {
		case bytes.Equal(s[i-5:i], []byte("dream")):
			i -= 5
		case bytes.Equal(s[i-5:i], []byte("erase")):
			i -= 5
		case len(s[:i]) == 5:
			fmt.Println("NO")
			return
		case bytes.Equal(s[i-6:i], []byte("eraser")):
			i -= 6
		case len(s[:i]) == 6:
			fmt.Println("NO")
			return
		case bytes.Equal(s[i-7:i], []byte("dreamer")):
			i -= 7
		default:
			fmt.Println("NO")
			return
		}
	}

	if i == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
