package main

import (
  "fmt"
  "bufio"
  "os"
  "strings"
  "strconv"
)

func main(){
  result := 0

  
	sc := bufio.NewScanner(os.Stdin)

	if sc.Scan() {
    sc.Text()
  }

  var at []string
	if sc.Scan() {
    at = strings.Split(sc.Text(), " ")
	}

  max:=0
	for _, e := range at {
		num, _ := strconv.Atoi(e)
    if max<num{
      max = num
    }else{
      result += max-num
    }
	}


  fmt.Println(result)

}
