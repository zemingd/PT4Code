package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	paramS := scanner.Text()
	scanner.Scan()
	paramT := scanner.Text()
	if strings.HasPrefix(paramT, paramS) && len(paramT) == len(paramS)+1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
