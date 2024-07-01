package main
import (
   "fmt"
   "os"
   "bufio"
   "strings"
   "strconv"
)

func StrStdin() (stringInput string) {
  scanner := bufio.NewScanner(os.Stdin)
  scanner.Scan()
  stringInput = scanner.Text()
  // stringInput = strings.TrimSpace(stringInput)
  return
}

func IntStdin() (int, error) {
  stringInput := StrStdin()
  return strconv.Atoi(strings.TrimSpace(stringInput))
}

func SplitWithoutEmpty(stringTargeted string, delim string) (stringReturned []string) {
  stringSplited := strings.Split(stringTargeted, delim)

  for _, str := range stringSplited {
    if str != "" {
      stringReturned = append(stringReturned, str)
    }
  }
  return
}

func SplitStrStdin(delim string) (stringReturned []string){
  // 文字列で1行取得
  stringInput := StrStdin()

  // 空白で分割
  // stringSplited := strings.Split(stringInput, delim)
  stringReturned = SplitWithoutEmpty(stringInput, delim)

  return
}

// デリミタで分割して整数値スライスを取得
func SplitIntStdin(delim string) (intSlices []int, err error) {
    // 文字列スライスを取得
    stringSplited := SplitStrStdin(" ")

    // 整数スライスに保存
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

func calculate(i []int) (fee int) {
    train_fee := i[0]*i[1]
    taxi_fee := i[2]
    if train_fee <= taxi_fee {
      fmt.Println(train_fee)
    } else {
      fmt.Println(taxi_fee)
    }
    return
}


func main() {
    i, err := SplitIntStdin(" ")
    if err != nil {
        fmt.Println(err)
    } else {
        //fmt.Println(i)
        //fmt.Println(len(i))
        calculate(i)
    }
}
