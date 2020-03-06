/**
 DataLogger<T> struct represents the behavior expected out of wrapped properties
 
 **Variables**
 
 `internalValue`
 
 This is the internally stored value.
 
 **Computed Property**
 
 `wrappedValue`
 
 This is the computed property that will perform the logging action.
 
 - Author: Arun Patwardhan
 - Version: 1.0
 - Date: 5th December 2019
 
 **Contact Details**
 
 [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
 [www.amaranthine.in](https://www.amaranthine.in)
 */
@propertyWrapper public struct DataLogger<T> {
    private var internalValue : T
    
    public var wrappedValue : T {
        get {
            //Write the code that the logged value was read.
            print(#line,"Logging the read event.")
            return internalValue
        }
        set (newValue) {
            //Write the code that the logged value was set.
            print(#line,"Logging the write event.")
            internalValue = newValue
        }
    }
    
    public init(newValue value : T)
    {
        self.internalValue = value
    }
    
}
