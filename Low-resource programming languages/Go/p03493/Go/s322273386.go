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

// ?????????????l??????????Split()
func SplitWithoutEmpty(stringTargeted string, delim string) (stringReturned []string) {
    stringSplited := strings.Split(stringTargeted, delim)

    for _, str := range stringSplited {
        if str != "" {
            stringReturned = append(stringReturned, str)
        }
    }

    return
}

// ?f???~?^??????????????X???C?X???��
func SplitStrStdin(delim string) (stringReturned []string) {
    // ???????1?s?��
    stringInput := StrStdin()
  
    // ???????
    // stringSplited := strings.Split(stringInput, delim)
    stringReturned = SplitWithoutEmpty(stringInput, delim)

    return
}

// ?f???~?^?????????????l?X???C?X???��
func SplitIntStdin(delim string) (intSlices []int, err error) {
    // ??????X???C?X???��
    stringSplited := SplitStrStdin(delim)
	
    // ?????X???C?X????
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
  in := StrStdin()
  count := 0
  for _, value := range strings.Split(in, "") {
    if value == "1" {
      count += 1
    }
  }
  fmt.Println(count)
}