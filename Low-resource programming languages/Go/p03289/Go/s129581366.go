package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
	"regexp"
)

func main() {

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	a := stdin.Text()
	passcount := 0
	log.Println(a[:1])
	if a[:1] == "A" {
		passcount++
	}
	slen := len(a)
	log.Println(a[2:slen-1])
	if strings.Count(a[2:slen-1], "C") == 1 {
		passcount++
	}
	if passcount == 2 {
	m :=	string(a[1:2])+strings.Trim(a[2:slen-1],"C")+string(a[slen-1:])
	log.Println(m)
	ism,_ := regexp.MatchString(`[A-Z]`,m)
		if ism == false {
		   passcount++
		}
	}
	if passcount == 3 {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}

}
