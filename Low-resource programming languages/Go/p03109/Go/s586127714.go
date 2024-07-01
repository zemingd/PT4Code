package main

import (
  "fmt"
  "os"
  "strings"
  "strconv"
)

func atoi(str string) int{
  a,err := strconv.Atoi(str)
  if err != nil{
    os.Exit(1)
  }
  return a
}

func main(){
  var a string
  y :=[]string{}
  fmt.Scanf("%s", &a)
  y = strings.Split(a, "/")
  
  if atoi(y[0])<2019 || atoi(y[0])==2019 && atoi(y[1])<4 { //Atoi Itoaもある
    fmt.Println("Heisei")
  }else{
    fmt.Fprintln(os.Stdout, "TBD")
  }
}
     
  
  