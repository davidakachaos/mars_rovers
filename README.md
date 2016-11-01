# Mars Rovers

NASA Rovers explore the surface of Mars.
A squad of robotic rovers are to be landed by NASA on a plateau on Mars.

## Usage
You can run this from the command line by executing:
```
mars_program
```
This wil ask for the inputs.

## Running with Guard
I've used Guard to develop and test this project constantly. To run guard execute the following:
```
bundle install
bundle exec guard
```
## Tests
Tests are writen in RSpec and can be executed outside of Guard by running:
```
rspec
```
## Coding style
I try to follow the Rubocop specs as much as possible. Rubocop is also part of the Guardfile to keep tabs on myself to keep using the style. If a style causes troubles, or isn't needed, it can be turned off.