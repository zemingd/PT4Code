package main

import "fmt"


func main(){
  var a string
  fmt.Scan(&a)
  str:=output_konaboard(a)
  for i:=0; i<len(str); i++{
    fmt.Printf(str[i])
  }
  fmt.Printf("\n");
}

func output_konaboard(str string) []string{
  out := make([]string, 10)
  var pointer = 0
  for i:=0; i<len(str); i++{
    tmp := str[i:i+1]
    if tmp=="0" {
      out[pointer] = "0"
      pointer++
    }else if tmp=="1" {
      out[pointer] ="1"
      pointer++
    }else if tmp=="B" {
      if pointer > 0 {
        pointer--
      }
    }
  }
  return out[0:pointer]
}
