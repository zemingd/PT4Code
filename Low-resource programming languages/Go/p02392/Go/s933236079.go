package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"strconv"
	"strings"
)

func mapf(f interface{}, list interface{}) interface{} {
	fv, listv := reflect.ValueOf(f), reflect.ValueOf(list)

	if fv.Kind() != reflect.Func || listv.Kind() != reflect.Slice {
		return nil
	}

	len := listv.Len()
	ret := reflect.MakeSlice(reflect.SliceOf(fv.Type().Out(0)), len, listv.Cap())

	for i := 0; i < len; i++ {
		v := fv.Call([]reflect.Value{listv.Index(i)})
		ret.Index(i).Set(v[0])
	}

	return ret.Interface()
}

func ifval(cond bool, a interface{}, b interface{}) interface{} {
	return map[bool]interface{}{true: a, false: b}[cond]
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()

	arr, _ := mapf(strconv.Atoi, strings.Split(scanner.Text(), " ")).([]int)
	a, b, c := arr[0], arr[1], arr[2]

	fmt.Println(ifval(a < b && b < c, "Yes", "No").(string))
}

