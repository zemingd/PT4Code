package main

import (
	"fmt"
  	"os"
  	"bufio"
  	"strconv"
)

func main(){
  var sc = bufio.NewScanner(os.Stdin)
  sc.Scan()
  N, _ := strconv.Atoi(string(sc.Text()))
  s := 0
  for i := 1 ; i <= N; i++{      
    s = i + s
  }
  fmt.Println(s)
}