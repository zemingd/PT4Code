package main

import (
  "bufio"
  "bytes"
  "fmt"
  "os"
  "strings"
  "strconv"
)

func main() {
  br := bufio.NewReader(os.Stdin)
  var buffer bytes.Buffer

  for {
    line, isPrefix, err := br.ReadLine()
    if err != nil {
      panic(err)
    }
    buffer.Write(line)
    if !isPrefix {
      break
    }
  }

  sli := strings.Split(buffer.String(), " ")
  A, _ := strconv.Atoi(sli[0])
  B, _ := strconv.Atoi(sli[1])
  K, _ := strconv.Atoi(sli[3])
  if A < K {
    if A + B > K {
      fmt.Println(A)
    }else{
      fmt.Println(2*A+B-K)
    }
  }else{
    fmt.Println(K)
  }
}
