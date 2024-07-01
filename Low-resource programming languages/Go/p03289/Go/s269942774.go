package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"regexp"
	"strings"
)

func main() {

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	a := stdin.Text()
	passcount := 0
	log.Println("a[:1] : ", a[:1])
	if a[:1] == "A" {
		passcount++
	}
	slen := len(a)
	log.Println("a[2:slen-1]: ", a[2:slen-1])
	ccount := 0
	for _, c := range a[2 : slen-1] {
		if string(c) == "C" {
			ccount++
			log.Println("hasC ",string(c))
		}
	}
	if ccount == 1 {
		passcount++
	}

	if passcount == 2 {
		m := string(a[1:2]) + strings.Replace(a[2:slen-1], "C","",1) + string(a[slen-1:])
		log.Println("text m ", m)
		ism, _ := regexp.MatchString(`[A-Z]`, m)
		log.Println("ismatch ", ism)
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
