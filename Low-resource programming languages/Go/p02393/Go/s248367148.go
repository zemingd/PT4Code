package main

import (
	"bufio"
	"fmt"
	"os"
	"reflect"
	"sort"
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

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()

	arr, _ := mapf(strconv.Atoi, strings.Split(scanner.Text(), " ")).([]int)
	sort.Ints(arr)

	fmt.Println(strings.Trim(fmt.Sprint(arr), "[]"))
}

