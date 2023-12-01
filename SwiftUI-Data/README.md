# 1 December 2023 

State and Binding:
1. Declare a property as a @State variable and set it to an initial value. Pass the property to a child view of the parent view at the top-most level of the view hierarchy without using the @State property wrapper for read-only access.
2. ChildView contains a read-only property isOn which is modified any time the @State property in the parent view changes. 
3. BView contains the supporting view, 'SupportingView'. The toggle in BView can be modified by pressing the switch or tapping the On/Off button.
