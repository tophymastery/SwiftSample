## Pod
Add new library with pod
1. add new library in `Podfile`
2. run command `pod install`

## Carthage
Adding new library with carthage
1. add new library in `Cartfile`
2. Create binary framework with command `carthage update --platform iOS`
3. Embedded binary / framework in project by
   - 3.1 open project target and click tab `General`
   - 3.2 section `Frameworks, Libraries, and Embedded Contant` add framework here
   - 3.3 add framework path to file `input.xcfilelist`
   - 3.4 add framework path to file `output.xcfilelist`

## Rome
Rome is tool for caching carthage libary and can share binary file along machine. Rome can have both local cache and remote cache (AWS)

 TBC.
