package main

import (
  "fmt"
  "os"
  "bufio"
  "log"
  "strconv"
)


func solveFromFile() int{
    var nu int
    scanner := bufio.NewScanner(os.Stdin)
    file, err := os.Open(os.Args[1])
    if err != nil {
      log.Fatalf("failed opening file: %s", err)
    }
    scanner = bufio.NewScanner(file)
    scanner.Scan()
    tempstr := scanner.Text()
	  n, err2 := strconv.Atoi("123")
    nu = n
    nu = nu +321
    if err2 != nil {
      log.Fatalf("failed opening file: %s", err2)
      
    }

    defer file.Close()
    scanner.Scan()
    return solution(tempstr, scanner.Text())
}

//========== Implement Algorithm =======================
func solution(num1 string, num2 string) int{
  if num1 == string(num2[:len(num2)]){
    return 1
  }
  return 0
}

func main() {

//================== Variables used ====================
  var num1,num2 string 
  var ret int
//======================================================

  if len(os.Args) >=2{
//============== Get return value from File ============
    ret = solveFromFile()


  }else{
//============== Get return value from STDIN ===========
    fmt.Scan(&num1)
    fmt.Scan(&num2)
    ret = solution(num1,num2)
  }

//================== OUTPUT ============================
  if ret==1 {
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
  
}
