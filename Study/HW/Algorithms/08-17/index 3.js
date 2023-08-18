const arr = [0,1,1,0,1,1,0,0]
let sorted=[] 
let li=0
let ri=arr.length-1
for(let i=0; i<arr.length; i++) {
    if(arr[i]===0 ) {
        sorted[li] = arr[i]
        li++
    } else{
        sorted [ri] = arr[i]
        ri--
    }
}
console.log(sorted)

////////////////////////////////////////////
    function progression(num) {
        if (num <= 0) throw new Error("The numner can't be non-positive");
        if (num == 1) return 1;
        return progression(num - 1) + num;
      }
      
      console.log(progression(5));

      /////////////////////////
      function sort(arr) {
        let count = 0;
        for (let i = 0; i < arr.length; i++) {
          if (arr[i] == 0) count++;
        }
        for (let i = 0; i < count; i++) {
          arr[i] = 0;
        }
        for (let i = count; i < arr.length; i++) {
          arr[i] = 1;
        }
        return arr;
      }
      
      let array = [0,1,1,0,1,1,0,0];
      console.log(sort(array));