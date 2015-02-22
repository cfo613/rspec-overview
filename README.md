# TESTING OVERVIEW

## Test Driven Development (TDD):
 - Act of writing tests before you write your code; also known as Test Driven Design and can affect the design of your code (e.g. what classes do what, what methods do what).
 - Process is usually known as Red (write a failing test), Green (write a test that will pass), Refactor (write test to optimize code)

## Using rspec
- Spec: short for specifications
- Some example terminal commands:
    rspec --color
    rspec -- color --format=documentation

## Three ways to create a pending test in rspec

1. it "does something" (don't create block)
2. xit "does something" do
   << ... >>
   end
3. pending "does something" do
   << ... >>
   end  
