package main

import (
    "fmt"
    "os"
    "bufio"
    "strings"
    "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func StrStdin() (stringInput string){
  sc.Scan()
  OneLineString := sc.Text()
  stringInput = strings.TrimSpace(OneLineString)
  return 
}

func IntStdin() (int, error){
  stringInput := StrStdin()
  return strconv.Atoi(stringInput)
}

// �󔒂�󕶎������̒l����������Split()
func SplitWithoutEmpty(stringTargeted string, delim string) (stringReturned []string) {
    stringSplited := strings.Split(stringTargeted, delim)

    for _, str := range stringSplited {
        if str != "" {
            stringReturned = append(stringReturned, str)
        }
    }

    return
}

func SplitStrStdin(delim string) (stringReturned []string) {
    stringInput := StrStdin()
  
    stringReturned = SplitWithoutEmpty(stringInput, delim)

    return
}

func SplitIntStdin(delim string) (intSlices []int, err error) {
    stringSplited := SplitStrStdin(delim)
	
    for i := range stringSplited {
        var iparam int
        iparam, err = strconv.Atoi(stringSplited[i])
        if err != nil {
            return
        }
        intSlices = append(intSlices, iparam)
    }
    return
}

func main(){
  first,error := SplitIntStdin(" ")
  
  result := 1
  if error == nil {
    for _, value := range first {
      result *= value
    }
  }
  
  a := result % 2
  
  if a == 0 {
    fmt.Println("Even")
  }else{
    fmt.Println("Odd")
  }
  
}
