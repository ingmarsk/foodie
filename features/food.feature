# These scenarios test the CLI our gem will provide. 

Feature: Food
  In order to portray or pluralize food
  As a CLI
  I want to be as objective as possible

# The first scenario ensures that we can call a specific task and pass it a single argument which then becomes the part of the text that is output.
Scenario: Broccoli is gross
  When I run `foodie portray broccoli`
  Then the output should contain "Gross!"

# The second scenario ensures effectively the same thing, but we pass that value in as an option rather than an argument.
Scenario: Tomato, or Tomato?
  When I run `foodie pluralize --word Tomato`
  Then the output should contain "Tomatoes"