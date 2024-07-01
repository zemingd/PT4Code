package main

import (
	"bufio"
	"fmt"
	"os"
)

func main()  {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	scanner.Scan()
	S := scanner.Text()

	scanner.Scan()
	fmt.Println(scanner.Text()+S)
}