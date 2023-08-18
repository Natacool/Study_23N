//Имея два отсортированных массива размера m и n соответственно, 
//вам нужно найти элемент, который будет находиться на k-й позиции
//в конечном отсортированном массиве.

//Массив 1 - 100 112 256 349 770
//Массив 2 - 72 86 113 119 265 445 892
//к = 7
//Вывод : 256

//Окончательный отсортированный массив -
//72, 86, 100, 112, 113, 119, 256, 265, 349, 445, 770, 892
//7-й элемент этого массива равен 256.

let array_m = [ 100, 112, 256, 349, 770 ]
const array_n = [ 72, 86, 113, 119, 265, 445, 892 ]
const ki = 7

// array_n.forEach ((el) => {
//     array_m.push (el);
// });

array_m = array_m.concat(array_n);

array_m.sort((a, b) => a - b); 
//console.log (array_m); 
console.log( array_m[ki -1]) 

// function search_k_el (k, arr) {
//     if (k >= 1 && k < arr.length+1) {
//         //console.log (arr[k])
//         return arr[k-1]
//     } else {
//         //throw new Error("index "+ k + " is invalid");
//         return
//     }
// }

// console.log(search_k_el(ki, array_m)) 


  