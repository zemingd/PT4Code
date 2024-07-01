package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
	"fmt"
)

func StrStdin() string {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	return strings.TrimSpace(scanner.Text())
}

func Uint64Stdin() uint64 {
	stringInput := StrStdin()
	num, _ := strconv.ParseUint(strings.TrimSpace(stringInput), 10, 64)
	return num
}

func IsPrime(n uint64) bool {
	if n == 1 { return false }
	if n == 2 { return true }
	if n % 2 == 0 { return false }

	for ni := 3; uint64(ni) * uint64(ni) <= n; ni += 2 {
		if n % uint64(ni) == 0 { return false }
	}

	return true 
}

func Solve() {
	X := Uint64Stdin()
	start := X

	if IsPrime(X) { 
		fmt.Println(X)
		return
	}

	if X % uint64(2) == 0 { 
		start += 1
	}

	for {
		if IsPrime(start) { break }
		start += 2
	}

	fmt.Println(start)
}

func main() {
	Solve()
}