require "./Paperboy/Paperboy.rb"

bill = Paperboy.new("Bill")

bill.deliver(160,101)
puts bill.report


bill.deliver(21,30)
puts bill.report

## Check Your Understanding
# ___
# Before moving on to the last exercise, it's important to ensure that you can answer the following questions:
#
#   * What is the difference between a class and an instance of a class?
#   *Class is just a template of an object while instance is a copy of that class with it's own values*
#   * What is an instance variable?
#   *An instance variable is a locally stored variable only available on the class unless explicityly called/set by getters and setters*
#   * What is an instance method?
#   *An instance method is similar to a normal method except it resides in an instance*
#   * How is an instance variable different from a local variable?
#   *Instance variables are available to be called/set within the instance but a local variable is only available within that specific score(ex. in a loop or method)*
#   * What is the purpose of getter methods and setter methods?
#   *getter and setter methods allow the instance variables to be set or retrieved. This makes it "available" outside the instance when invoked*
