package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main()  {

	Sscanner := bufio.NewScanner(os.Stdin)
	Sscanner.Scan()
	S := Sscanner.Text()

	Tscanner := bufio.NewScanner(os.Stdin)
	Tscanner.Scan()
	T := Tscanner.Text()

	S = strings.ToLower(S)
	T = strings.ToLower(T)

	fmt.Println(S)
	fmt.Println(T)

	s := strings.Contains(T, S)

	if s == true{
		fmt.Println("Yes")
	}else {
		fmt.Println("No")
	}
}