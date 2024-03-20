#! /bin/bash
# Declare aarray
arr=(prakhar ankit 1 rishabh manish abhinav)

echo ${arr[@]}   # prints all values with space
echo ${arr[*]}   # same as above
echo ${arr[@]:0} # pront all
echo ${arr[*]:0} # print a;ll    but both * and @ is difference [@] treats each element of the array as a separate word, while [*] treats the entire array as a single word


echo ${arr[0]}   # print the first element
echo ${arr}      # same

echo ${arr[3]}   # print of value index 3 and 1
echo ${arr[1]}   
#below print element from x element to y
echo ${arr[@]:0}  
echo ${arr[@]:1} 

echo ${arr[0]:1:3} # prints substring of first element from index 1 to 3

# Length
echo ${#arr[0]} # print length of first element
echo ${#arr}    # prints length of first element

# Size of the array
echo ${#arr[@]} # printing number of element
echo ${#arr[*]} # same

# Search in the array
echo ${arr[@]/*[aA]*/} # prints elements that don't contain 'a' or 'A'

# Replacing Substring Temporarily
echo ${arr[@]//a/A} # replace 'a' with 'A'
echo ${arr[@]}      # prints original array
echo ${arr[0]//r/R} # replaces 'r' with 'R' in the first element
