package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// go run ./ABC168/B\ -\ ...\ \(Triple\ Dots\)/main.go < ./ABC168/B\ -\ ...\ \(Triple\ Dots\)/in

func main() {
	sc := bufio.NewScanner(os.Stdin)
	var maxStr int
	sc.Scan()
	maxStr, _ = strconv.Atoi(sc.Text())
	sc.Scan()
	inputs := sc.Text()
	if len(inputs) > maxStr {
		fmt.Println(inputs[:maxStr] + "...")
	} else {
		fmt.Println(inputs)
	}
}
