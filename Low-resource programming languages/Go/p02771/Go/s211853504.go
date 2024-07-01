package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main(){

	s := strings.Split(read()," ")
	if s[0] == s[1] && s[0] != s[2] || s[0] == s[2] && s[0] != s[1] || s[0] != s[1] && s[1] == s[2]{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}

}

func read() string{

	var(
        scan = bufio.NewScanner(os.Stdin)
	    s string
	)

	if scan.Scan(){
		s=scan.Text()
	}

	return s
}