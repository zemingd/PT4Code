package main

import (
	"fmt"
	"log"
	"regexp"
)

func main() {
	var S, T string

	_, err := fmt.Scan(&S, &T)
	if err != nil {
		log.Fatal(err)
	}

	validate(S)
	validate(T)

	r := regexp.MustCompile("^" + S)
	result := r.MatchString(T)

	if result == true {
		fmt.Println("yes")
	} else {
		fmt.Println("no")
	}
}

func validate(str string) {
	if len(str) == 0 || 10 < len(str)  {
		log.Fatalf("%s must be greater than or equal to 1 and less than or equal to 10", str)
	}

	match, err := regexp.MatchString(`\d`, str)
	if err != nil {
		log.Fatal(err)
	}
	if match == true {
		log.Fatal("T must be string")
	}
}
