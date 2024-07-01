package main

import (
    "bufio"
    "fmt"
    "os"
  "strconv"
  "strings"
)

func main() {
  var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()  
  var count, _ = strconv.Atoi(sc.Text())
  
  var countAc int = 0
  var countWa int = 0
  var countTle int = 0
  var countRe int = 0
  
     for i := 0; i < count; i++ {
       sc.Scan()
       var word = sc.Text()
       if strings.Contains(word, "AC") {
       	countAc += 1
       } else if word == "WA" {
       	countWa += 1
       } else if word == "TLE" {
       	countTle += 1
       } else if word == "RE" {
       	countRe += 1
	    }
     }
       
       fmt.Printf("AC x %d\n", countAc)
       fmt.Printf("WA x %d\n", countWa)
       fmt.Printf("TLE x %d\n", countTle)
       fmt.Printf("RE x %d", countRe)
}