# Challenge-3

This function takes two parameters: $Object, which is the nested object, and $Key, which is the key whose value you want to retrieve. 
The function checks if the current object has a key that matches the input key, and if so, returns its value. 
If not, it recursively checks each value in the object to see if it is itself a nested object. 
If it is, it calls the Get-NestedObjectValue function again with the nested object as the new $Object parameter.


Function call
This code creates a nested object $object, and then calls the Get-NestedObjectValue function with the object and the key "e". 
The function returns the value associated with that key, which in this case is "value3", and prints it to the console.
