require "./Paperboy/Paperboy.rb"

bill = Paperboy.new("Bill")

bill.deliver(160,101)
puts bill.report


bill.deliver(21,30)
puts bill.report
