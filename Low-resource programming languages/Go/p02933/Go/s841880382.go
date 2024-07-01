package main

import(
	"fmt"
  	"os"
  	"bufio"
  	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func text() string {
  sc.Scan()  
  return sc.Text()
}

func main(){
	
  var num = text()
  var text = text()
  a,_ := strconv.Atoi(num)
  
  if a >= 3200{
    fmt.Println(text)
  }else if a < 3200{
    fmt.Println("red")
  }
}