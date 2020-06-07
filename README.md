## Carthage
Adding new library with carthage
1. Create binary framework with command `carthage update --platform iOS`
2. Embedded binary / framework in project by
   - 2.1 open project target and click tab `General`
   - 2.2 section `Frameworks, Libraries, and Embedded Contant` add framework here
   - 2.3 add framework path to file `input.xcfilelist`
   - 2.4 add framework path to file `output.xcfilelist`
